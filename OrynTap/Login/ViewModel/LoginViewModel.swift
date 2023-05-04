
import SwiftUI
import KeychainSwift
import Combine

class LoginViewModel: ObservableObject {
    @Published var phone = ""
    @Published var password = ""
    @Published var isLoading = false
    @Published var error: String?
    
    @Published var canSubmit = false
    
    @Published private var isValidPhone = false
    @Published private var isValidPassword = false
    

    var phonePrompt: String? {
        if isValidPhone == true || phone.isEmpty {
            return nil
        } else {
            return "Enter full phone number"
        }
    }
    
    var passwordPrompt: String? {
        if isValidPassword == true || password.isEmpty {
            return nil
        } else {
            return "Password - requerid field"
        }
    }
    
    private var cancellableSet: Set<AnyCancellable> = []
    
    private let emailPredicate = NSPredicate(format: "SELF MATCHES %@", Regex.email.rawValue)
    private let phonePredicate = NSPredicate(format: "SELF MATCHES %@", Regex.phone.rawValue)
    
    init() {
        
        $password
            .debounce(for: 0.5, scheduler: RunLoop.main)
            .map { password in
                return password.count >= 8
            }
            .assign(to: \.isValidPassword, on: self)
            .store(in: &cancellableSet)
        
        $phone
            .debounce(for: 0.5, scheduler: RunLoop.main)
            .map { phone in
                return self.phonePredicate.evaluate(with: phone)
            }
            .assign(to: \.isValidPhone, on: self)
            .store(in: &cancellableSet)
        
        Publishers.CombineLatest($isValidPhone, $isValidPassword)
            .map { first, second in
                return (first && second)
            }
            .assign(to: \.canSubmit, on: self)
            .store(in: &cancellableSet)
        
    }
    
    func removeExtraCharacters(_ characters: String, from string: String) -> String {
        return string.replacingOccurrences(of: characters, with: "", options: .regularExpression)
    }
    
    func login(completion: @escaping (Bool) -> ()) {
        isLoading = true
        
        let loginData = ["phone": phone.removeExtraCharacters(text: phone), "password": password]
        var request = URLRequest(url: URL(string: "http://84.252.141.147:3333/api/v1/user/login")!)
        request.httpMethod = "POST"
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        
        guard let httpBody = try? JSONSerialization.data(withJSONObject: loginData, options: []) else {
            self.error = "Invalid login data"
            self.isLoading = false
            completion(false)
            return
        }
        
        request.httpBody = httpBody
        URLSession.shared.dataTask(with: request) { (data, response, error) in
            DispatchQueue.main.async {
                self.isLoading = false
                
                if let error = error {
                    self.error = error.localizedDescription
                    completion(false)
                    return
                }
                
                guard let data = data else {
                    self.error = "Invalid data"
                    completion(false)
                    return
                }
                
                do {
                    let loginResponse = try JSONDecoder().decode(LoginResponse.self, from: data)
                    let keychain = KeychainSwift()
                    keychain.set(loginResponse.accessToken, forKey: "access_token")
                    keychain.set(loginResponse.refreshToken, forKey: "refresh_token")
                    completion(true)
                } catch {
                    self.error = "Invalid login response"
                    completion(false)
                }
            }
        }.resume()
    }
}

