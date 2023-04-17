

//import Foundation
//
//enum AuthentificationError: Error {
//    case inValidCredentials
//    case custom(errorMessage: String)
//}
//
//class LoginService {
//    func login(phone: String, password: String, completion: @escaping (Result<String, AuthentificationError>) -> Void) {
//        guard let url = URL(string: "51.250.97.134:3333/api/v1/user/login") else {
//            completion(.failure(.custom(errorMessage: "URL is not correct")))
//            return
//        }
//        let body = LoginRequestModel(phone: phone, password: password)
//        
//        var request = URLRequest(url: url)
//        request.httpMethod = "POST"
//        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
//        request.httpBody = try? JSONEncoder().encode(body)
//        
//        URLSession.shared.dataTask(with: request) { data, response, error in
//            
//            guard let data = data, error == nil else {
//                completion(.failure(.custom(errorMessage: "No data")))
//                return
//            }
//            
//            guard let loginResponse = try? JSONDecoder().decode(LoginResponse.self, from: data) else {
//                completion(.failure(.inValidCredentials))
//                return
//            }
//            
//            guard let token = loginResponse.token else {
//                completion(.failure(.inValidCredentials))
//                return
//            }
//            
//            completion(.success(token))
//            
//        }.resume()
//    }
//}


