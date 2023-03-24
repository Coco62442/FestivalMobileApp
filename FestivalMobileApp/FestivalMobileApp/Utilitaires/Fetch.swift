//
//  Fetch.swift
//  FestivalMobileApp
//
//  Created by etud on 24/03/2023.
//

import Foundation

extension URLSession {
    
    func get<T: Decodable>(url: URL) async -> Result<T, ErrorApi> {
        guard let(data,_) = try? await data(from: url) else {
            return .failure(.urlNotFound(url.absoluteString))
        }
        guard let decoded = try? JSONDecoder().decode(T.self, from: data) else {
            print(String(decoding: data,as: UTF8.self))
            return .failure(.JsonDecodingFailed)
        }
        return .success(decoded)
    }
    
    func create<T:Codable>(url:URL, element:T)async -> Result<T, ErrorApi>{
        guard let encoded :Data = try? JSONEncoder().encode(element)else {
            return .failure(.JsonEncodingFailed)
        }
        var request :URLRequest = URLRequest(url: url)
        request.httpMethod = "POST"
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        do {
            let (data,response) = try await upload(for: request, from: encoded, delegate: nil)
            let httpResponse = response as! HTTPURLResponse
            if httpResponse.statusCode == 201 || httpResponse.statusCode == 200 {
                guard let decoded: T = await JSONHelper.decode(data: data) else {
                    print(String(decoding: data,as: UTF8.self))
                    return .failure(.JsonDecodingFailed)
                }
                return .success(decoded)
            }
            else {
                return .failure(.httpResponseError(httpResponse.statusCode))
            }
        }
        catch{
            return .failure(.urlNotFound(url.absoluteString))
        }
    }
    
    func update<T:Codable>(url:URL, element:T)async -> Result<T, ErrorApi>{
        guard let encoded :Data = try? JSONEncoder().encode(element)else {
            return .failure(.JsonEncodingFailed)
        }
        var request :URLRequest = URLRequest(url: url)
        request.httpMethod = "PATCH"
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        do {
            let (data,response) = try await URLSession.shared.upload(for: request, from: encoded, delegate: nil)
            let httpResponse = response as! HTTPURLResponse
            if httpResponse.statusCode == 201 || httpResponse.statusCode == 200 {
                guard let decoded: T = await JSONHelper.decode(data: data) else {
                    print(String(decoding: data,as: UTF8.self))
                    return .failure(.JsonDecodingFailed)
                }
                return .success(decoded)
            }
            else {
                return .failure(.httpResponseError(httpResponse.statusCode))
            }
        }
        catch{
            return .failure(.urlNotFound(url.absoluteString))
        }
    }

    func delete<T: Codable>(url:URL)async -> Result<T, ErrorApi>{
        guard let(data,_) = try? await data(from: url) else {
            return .failure(.urlNotFound(url.absoluteString))
        }
        
        var request :URLRequest = URLRequest(url: url)
        request.httpMethod = "DELETE"
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        do{
            let (data,response) = try await upload(for: request, from: data, delegate: nil)
            let httpResponse = response as! HTTPURLResponse
            if httpResponse.statusCode == 201 || httpResponse.statusCode == 200 {
                guard let decoded: T = await JSONHelper.decode(data: data) else {
                    print(String(decoding: data,as: UTF8.self))
                    return .failure(.JsonDecodingFailed)
                }
                return .success(decoded)
            }
            else {
                return .failure(.httpResponseError(httpResponse.statusCode))
            }
        }
        catch{
            return .failure(.urlNotFound(url.absoluteString))
        }
    }
    
    func login<UtilisateurDTO : Decodable>(url:URL, element:UtilisateurLoginDTO)async -> Result<UtilisateurDTO, ErrorApi>{
        guard let encoded :Data = try? JSONEncoder().encode(element)else {
            return .failure(.JsonEncodingFailed)
        }
        var request :URLRequest = URLRequest(url: url)
        request.httpMethod = "POST"
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        do {
            let (data,response) = try await upload(for: request, from: encoded, delegate: nil)
            let httpResponse = response as! HTTPURLResponse
            if httpResponse.statusCode == 201 || httpResponse.statusCode == 200 {
                guard let decoded: UtilisateurDTO = await JSONHelper.decode(data: data) else {
                    print(String(decoding: data,as: UTF8.self))
                    return .failure(.JsonDecodingFailed)
                }
                return .success(decoded)
            }
            else {
                return .failure(.httpResponseError(httpResponse.statusCode))
            }
        }
        catch{
            return .failure(.urlNotFound(url.absoluteString))
        }
    }
    
}
