//
//  Post.swift
//  JSONPosts
//
//  Created by Mickael Mas on 07/12/2021.
//

import Foundation

enum PostsError: Error {
    case invalidResponse
    case invalidURL
}

struct Post: Codable, Identifiable {
    let userId: Int
    let id: Int
    let title: String
    let body: String
    
    static func getPosts() async throws -> [Post] {
        
        // 1. Récupération de l'URL
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else {
            throw PostsError.invalidURL
        }
        
        // 2. Récupération du résultat de l'appel réseau
        let (data, _) = try await URLSession.shared.data(from: url)
        
        // 3. Décodage de la réponse
        let posts = try JSONDecoder().decode([Post].self, from: data)
        return posts
    }
}
