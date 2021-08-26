//
//  SearchIssues.swift
//  nvvm-github-clone
//
//  Created by Admin on 26/08/2021.
//

import Foundation

struct SearchIssues: Codable {

    let items: [Item]

    struct Item: Codable, Identifiable {

        let id: Int
        let title: String
        let user: User
        let label: [Label]?
        let state: String
        let createdAt: String
        let body: String?
        
        struct User: Codable {
            
            let login: String
            
            enum CodingKeys: String, CodingKey {
                
                case login = "login"
            
            }
            
        }
        
        struct Label: Codable, Identifiable {
            
            let id: Int
            let name: String
            
            enum CodingKeys: String, CodingKey {
                
                case id = "id"
                case name = "name"
                
            }
            
        }

        enum CodingKeys: String, CodingKey {

            case id = "id"
            case title = "title"
            case user = "user"
            case label = "label"
            case state = "state"
            case createdAt = "created_at"
            case body = "body"
        }

    }

    enum CodingKeys: String, CodingKey {
        case items = "items"
    }

}
