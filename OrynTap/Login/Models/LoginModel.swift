//
//  LoginModel.swift
//  OrynTap
//
//  Created by Тынысбек Жанагуль on 07.04.2023.
//

import Foundation

struct LoginRequestModel: Codable {
    let phone: String
    let password: String
}

struct LoginResponse: Decodable {
    let accessToken: String
}

struct User: Codable {
    let id: Int64
    let accessToken: String
    let accessTokenExpire: Int64
    let refreshToken: String
    let refreshTokenExpire: Int64
}

struct TokensInfo: Codable {
    let accessToken: String
    let refreshToken: String
}

struct TokenInfo {
    let token: String
}
