
import Foundation

struct LoginRequestModel: Codable {
    let phone: String
    let password: String
}

struct VerifyRequestModel: Codable {
    let phone: String
    let code: String
}

struct LoginResponse: Decodable {
    let accessToken: String
    let refreshToken: String
}


