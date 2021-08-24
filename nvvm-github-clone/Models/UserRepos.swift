//
//  UserRepos.swift
//  nvvm-github-clone
//
//  Created by Admin on 19/08/2021.
//

import Foundation

struct UserRepos: Codable, Identifiable {
    
    let id: Int
    let name: String
    let fullName: String
    let privateRepo: Bool
    let repoUrl: String
    let description: String?
    let language: String?
    let updatedAt: String
    
    let owner: Owner
    
    struct Owner: Codable {
        
        let id: Int
        let login: String
        let avatarUrl: String
        
        enum CodingKeys: String, CodingKey {
            case id = "id"
            case login = "login"
            case avatarUrl = "avatar_url"
        }
        
    }
    
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
        case fullName = "full_name"
        case privateRepo = "private"
        case repoUrl = "url"
        case description = "description"
        case language = "language"
        case updatedAt = "updated_at"
        case owner = "owner"
    }
}
