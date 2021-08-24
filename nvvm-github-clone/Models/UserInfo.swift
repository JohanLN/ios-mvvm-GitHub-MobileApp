//
//  UserInfo.swift
//  nvvm-github-clone
//
//  Created by Admin on 24/08/2021.
//

import Foundation

struct UserInfo: Codable {

    let login: String
    let avatarUrl : String
    let bio: String?
    let followers: Int
    let following: Int
    let createdAt: String

    enum CodingKeys: String, CodingKey {
        case login = "login"
        case avatarUrl = "avatar_url"
        case bio = "bio"
        case followers = "followers"
        case following = "following"
        case createdAt = "created_at"
    }
}
