//
//  SearchUsers.swift
//  nvvm-github-clone
//
//  Created by Admin on 26/08/2021.
//

import Foundation

struct SearchUsers: Codable {

    let items: [Item]

    struct Item: Codable, Identifiable {

        let id: Int
        let login: String
        let avatarUrl: String
        let description: String?

        enum CodingKeys: String, CodingKey {

            case id = "id"
            case login = "login"
            case avatarUrl = "avatar_url"
            case description = "description"
        }

    }

    enum CodingKeys: String, CodingKey {
        case items = "items"
    }

}
