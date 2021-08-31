//
//  SearchRepos.swift
//  nvvm-github-clone
//
//  Created by Admin on 26/08/2021.
//

import Foundation

struct SearchRepos: Codable {
    
    let items: [Item]
    
    struct Item: Codable, Identifiable {
        
        let id: Int
        let name: String
        let fullName: String
        let owner: Owner
        let description: String?
        let repoUrl: String
        let updatedAt: String
        let stars: Int
        let language: String?
        
        let license: License?
        
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
        
        struct License: Codable {
            
            let name: String
            
            enum CodingKeys: String, CodingKey {

                case name = "name"

            }
            
        }
        
        enum CodingKeys: String, CodingKey {
            
            case id = "id"
            case name = "name"
            case fullName = "full_name"
            case owner = "owner"
            case description = "description"
            case repoUrl = "url"
            case updatedAt = "updated_at"
            case stars = "stargazers_count"
            case language = "language"
            case license = "license"
            
        }
        
    }
    
    enum CodingKeys: String, CodingKey {
        case items = "items"
    }
    
}
