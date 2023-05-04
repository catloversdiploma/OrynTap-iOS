//
//  RegistrationViewModel.swift
//  OrynTap
//
//  Created by Тынысбек Жанагуль on 30.04.2023.
//

import Foundation

class RegistrationViewModel: ObservableObject {
    @Published var user = RegisterRequestModel(type: 0, phone: "", password: "", firstName: "", lastName: "")
        @Published var verificationCode = ""
        @Published var isCodeValid = false
        @Published var errorMessage: String?

        func register() {
            var request = URLRequest(url: URL(string: "http://51.250.97.134:3333/api/v1/user/register")!)
            request.httpMethod = "POST"
            request.addValue("application/json", forHTTPHeaderField: "Content-Type")

            do {
                let encoder = JSONEncoder()
                request.httpBody = try encoder.encode(user)
            } catch {
                self.errorMessage = "Failed to encode user data"
                return
            }

            URLSession.shared.dataTask(with: request) { data, response, error in
                guard let data = data else {
                    self.errorMessage = "Failed to register: \(error?.localizedDescription ?? "Unknown error")"
                    return
                }

                if let httpResponse = response as? HTTPURLResponse {
                    if (200...299).contains(httpResponse.statusCode) {
                        print("Register is successful")
                        self.requestVerificationCode()
                    } else {
                        self.errorMessage = "Failed to register: HTTP status code \(httpResponse.statusCode)"
                    }
                }
            }.resume()
        }

        func requestVerificationCode() {
            var request = URLRequest(url: URL(string: "http://51.250.97.134:3333/api/v1/user/verify")!)
            request.httpMethod = "POST"
            request.addValue("application/json", forHTTPHeaderField: "Content-Type")

            do {
                let encoder = JSONEncoder()
                request.httpBody = try encoder.encode(["phoneNumber": user.phone])
            } catch {
                self.errorMessage = "Failed to request verification code"
                return
            }

            URLSession.shared.dataTask(with: request) { data, response, error in
                guard let data = data else {
                    self.errorMessage = "Failed to request verification code: \(error?.localizedDescription ?? "Unknown error")"
                    return
                }

                if let httpResponse = response as? HTTPURLResponse {
                    if (200...299).contains(httpResponse.statusCode) {
                        self.errorMessage = nil
                    } else {
                        self.errorMessage = "Failed to request verification code: HTTP status code \(httpResponse.statusCode)"
                    }
                }
            }.resume()
        }

    func verify() {
        var request = URLRequest(url: URL(string: "http://51.250.97.134:3333/api/v1/user/verify")!)
        request.httpMethod = "POST"
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        
        do {
            let encoder = JSONEncoder()
            request.httpBody = try encoder.encode(["phoneNumber": user.phone, "verificationCode": verificationCode])
        } catch {
            self.errorMessage = "Failed to verify phone number"
            return
        }
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            guard let data = data else {
                self.errorMessage = "Failed to verify phone number: \(error?.localizedDescription ?? "Unknown error")"
                return
            }
            
            if let httpResponse = response as? HTTPURLResponse {
                if (200...299).contains(httpResponse.statusCode) {
                    self.isCodeValid = true
                    self.errorMessage = nil
                    // Registration successful,
                }
            }
        }.resume()
    }
}


