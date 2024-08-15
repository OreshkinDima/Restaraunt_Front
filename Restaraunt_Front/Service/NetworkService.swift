//
//  NetworkService.swift
//  Restaraunt_Front
//
//  Created by Dima Oreshkin on 15.08.2024.
//

import Foundation

class NetworkService {
    //Делаем Синглтон
    static let shared = NetworkService()
    private init() {}
    
    private let localhost = "http://95.217.43.234:3392"
  
    //Метод для авторизации
    func auth(login: String, password: String) async throws -> User {
        let dto = UserDTO(login: login, password: password)
        
        let urlString = "\(localhost)\(APiMethod.auth.rawValue)"
        guard let url = URL(string: urlString) else {throw NetworkErrors.badURL}
        var request = URLRequest(url: url)
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        request.httpMethod = "POST"
        
        let encoder = JSONEncoder()
        let data = try encoder.encode(dto)
        request.httpBody = data
        let userResponce = try await URLSession.shared.data(for: request)
        let userData = userResponce.0
        let decoder = JSONDecoder()
        let user = try decoder.decode(User.self, from: userData)
        return user
    }
    
    
}

struct UserDTO: Codable {
    let login: String
    let password: String
}

enum APiMethod: String {
    case auth = "/users/auth"
}

enum NetworkErrors: Error {
case badURL
}
