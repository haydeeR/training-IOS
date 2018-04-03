//
//  PostTableViewController.swift
//  reachabilityTest
//
//  Created by Haydee Rodriguez on 4/3/18.
//  Copyright © 2018 Haydee Rodriguez. All rights reserved.
//

import UIKit
import Alamofire

struct RedditPost {
    let title: String!
    let subreddit: String!
}

class PostsTableViewController: UITableViewController {
    
    var posts = [RedditPost]()
    let network = NetworkManager.sharedInstance
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Latest Posts"
        
        // Fetch the posts and then reload the table
        fetchPosts { posts in
            self.posts = posts
            self.tableView.reloadData()
        }
    }
    
    private func fetchPosts(completion: @escaping (_ posts: [RedditPost]) -> Void) -> Void {
        // Send a request to the Reddit API
        Alamofire.request("https://api.reddit.com").validate().responseJSON { response in
            switch response.result {
            case .success(let JSON):
                let data = JSON as! [String:AnyObject]
                
                guard let children = data["data"]!["children"] as? [AnyObject] else { return }
                
                var posts = [RedditPost]()
                
                // Loop through the Reddit posts and then assign a post to the posts array
                for child in 0...children.count-1 {
                    let post = children[child]["data"] as! [String: AnyObject]
                    
                    posts.append(RedditPost(
                        title: post["title"] as! String,
                        subreddit: "/r/" + (post["subreddit"] as! String)
                    ))
                }
                
                DispatchQueue.main.async {
                    completion(posts)
                }
                
            case .failure(let error):
                print(error)
            }
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    // Return the number of posts available
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.posts.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PostCell", for: indexPath)
        let post = posts[indexPath.row] as RedditPost
        
        cell.textLabel?.text = post.title
        cell.detailTextLabel?.text = post.subreddit
        
        return cell
    }
}
