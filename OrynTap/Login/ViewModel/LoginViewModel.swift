

import SwiftUI

class LoginViewModel: ObservableObject {
    
    // Properties
    
    var phoneNumber: String = ""
    var password: String = ""
    
    // Mark -
    
    @Published var isAuthentificated: Bool = false
    @Published var hasError: Bool = false
    
    // Mark -
    
    var canSignIn: Bool {
        !phoneNumber.isEmpty && !password.isEmpty
    }
    
    func login() {
        guard !phoneNumber.isEmpty && !password.isEmpty else { return }
        var request = URLRequest(url: URL(string: "51.250.97.134:3333/api/v1/user/login")!)
        request.httpMethod = "POST"
        let authData = (phoneNumber + ":" + password).data(using: .utf8)!.base64EncodedString
        isAuthentificated = true
        URLSession.shared.dataTask(with: request) { [weak self] data, response, error in
            DispatchQueue.main.async {
                if error != nil || (response as! HTTPURLResponse).statusCode != 200 {
                    self?.hasError = true
                } else if let data = data {
                    do {
                        let signInResponse = try JSONDecoder().decode(LoginResponse.self, from: data)
                        
                        print(signInResponse)
                        
                        // TODO: Cache Access Token in Keychain
                    } catch {
                        print("Unable to Decode Response \(error)")
                    }
                }
                self?.isAuthentificated = false
            }
        }.resume()
    }
}
