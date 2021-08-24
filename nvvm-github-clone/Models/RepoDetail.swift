//
//  RepoDetail.swift
//  nvvm-github-clone
//
//  Created by Admin on 23/08/2021.
//

import Foundation

struct RepoDetail: Codable {
    
    let id: Int
    let name: String
    let fullName: String
    let privateRepo: Bool
    let owner: Owner
    let description: String?
    let fork: Bool
    let repoUrl: String
    let createdAt: String
    let updatedAt: String
    let size: Int
    let star: Int
    let language: String?
    let forkCount: Int
    let sub: Int

    struct Owner: Codable {
        let id: Int
        let login: String
        let avatarUrl: String

        enum CodingKeys: String, CodingKey {
            case login = "login"
            case id = "id"
            case avatarUrl = "avatar_url"
        }

    }
    
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
        case fullName = "full_name"
        case privateRepo = "private"
        case owner = "owner"
        case description = "description"
        case fork = "fork"
        case repoUrl = "url"
        case createdAt = "created_at"
        case updatedAt = "updated_at"
        case size = "size"
        case star = "stargazers_count"
        case language = "language"
        case forkCount = "forks_count"
        case sub = "subscribers_count"
    }
}

struct RepoBranches: Codable {
    
    let name: String
    let protected: Bool

    enum CodingKeys: String, CodingKey {
        case name = "name"
        case protected = "protected"
    }
}
