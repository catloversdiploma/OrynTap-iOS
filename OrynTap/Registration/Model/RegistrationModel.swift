

import Foundation

struct RegisterRequestModel: Codable {
    var type: Int
    var phone: String
    var password: String
    var firstName: String
    var lastName: String
}

struct RegisterResponse {
    let phone: String
}
