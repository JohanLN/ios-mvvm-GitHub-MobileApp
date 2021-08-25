//
//  APIServices.swift
//  nvvm-github-clone
//
//  Created by Admin on 19/08/2021.
//

import Foundation

class APIServices {
    
    func fetchUserRepos(url: URL, completion: @escaping ([UserRepos]?) -> ()) {
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            
            print("fetchUserRepos")
            
            guard error == nil else {
                print("An error occure: \(error!.localizedDescription)")
                completion(nil)
                return
            }
            
            guard let data = data else {
                print("No data retruned from GithubAPI.")
                completion(nil)
                return
            }

            guard let response = response as? HTTPURLResponse else {
                print("No response returned from GithubAPI.")
                completion(nil)
                return
            }

            guard response.statusCode == 200 else {
                print("Error, statusCode: \(response.statusCode)")
                completion(nil)
                return
            }

            do {
                let userRepos = try JSONDecoder().decode([UserRepos].self, from: data)
                DispatchQueue.main.async {
                    completion(userRepos)
                }
            } catch {
                print("Unable to decode UserRepos datas.")
                completion(nil)
                return
            }
        }.resume()
    }
    
    func fetchRepoDetail(url: URL, completion: @escaping (RepoDetail?) -> ()) {
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            
            print("fetchRepoDetail")
            
            guard error == nil else {
                print("An error occure: \(error!.localizedDescription)")
                completion(nil)
                return
            }
            
            guard let data = data else {
                print("No data retruned from GithubAPI.")
                completion(nil)
                return
            }
            
            guard let response = response as? HTTPURLResponse else {
                print("No response returned from GithubAPI.")
                completion(nil)
                return
            }
            
            guard response.statusCode == 200 else {
                print("Error, statusCode: \(response.statusCode)")
                completion(nil)
                return
            }
            
            do {
                let repoDetail = try JSONDecoder().decode(RepoDetail.self, from: data)
                DispatchQueue.main.async {
                    completion(repoDetail)
                }
            }  catch {
                print("Unable to decode RepoDetail datas.")
                completion(nil)
                return
            }
        }.resume()
    }
    
    func fetchRepoBranches(url: URL, completion: @escaping ([RepoBranches]?) -> ()) {

        URLSession.shared.dataTask(with: url) { (data, response, error) in

            print("fetchRepoBranches")
            
            guard error == nil else {
                print("An error occure: \(error!.localizedDescription)")
                completion(nil)
                return
            }

            guard let data = data else {
                print("No data retruned from GithubAPI.")
                completion(nil)
                return
            }

            guard let response = response as? HTTPURLResponse else {
                print("No response returned from GithubAPI.")
                completion(nil)
                return
            }

            guard response.statusCode == 200 else {
                print("Error, statusCode: \(response.statusCode)")
                completion(nil)
                return
            }

            do {
                let repoBranches = try JSONDecoder().decode([RepoBranches].self, from: data)
                DispatchQueue.main.async {
                    completion(repoBranches)
                }
            } catch {
                print("Unable to decode RepoBranches datas.")
                completion(nil)
                return
            }
        }.resume()
    }
    
    func fetchUserInfo(url: URL, completion: @escaping (UserInfo?) -> ()) {

        URLSession.shared.dataTask(with: url) { (data, response, error) in
            
            guard error == nil else {
                print("An error occure: \(error!.localizedDescription)")
                completion(nil)
                return
            }

            guard let data = data else {
                print("No data retruned from GithubAPI.")
                completion(nil)
                return
            }

            guard let response = response as? HTTPURLResponse else {
                print("No response returned from GithubAPI.")
                completion(nil)
                return
            }

            guard response.statusCode == 200 else {
                print("Error, statusCode: \(response.statusCode)")
                completion(nil)
                return
            }

            do {
                let userInfo = try JSONDecoder().decode(UserInfo.self, from: data)
                DispatchQueue.main.async {
                    completion(userInfo)
                }
            } catch {
                print("Unable to decode UserInfo datas.")
                completion(nil)
                return
            }
        }.resume()
    }
    
}
