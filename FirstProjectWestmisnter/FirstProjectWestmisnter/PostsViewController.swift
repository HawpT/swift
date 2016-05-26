//
//  FirstViewController.swift
//  FirstProjectWestmisnter
//
//  Created by Kevin Haupt on 5/17/16.
//  Copyright (c) 2016 Kevin Haupt. All rights reserved.
//

import UIKit

class PostsViewController: UITableViewController {

    var posts: [Post] = []
    override func viewDidLoad(){
        super.viewDidLoad()
        loadFakeData()
    }
    
    private func loadFakeData() {
        posts = [
            Post(title: "Chad 1", url: NSURL(string: "https://google.com")!),
            Post(title: "Chad 2", url: NSURL(string: "https://google.com")!),
            Post(title: "Chad 3", url: NSURL(string: "https://google.com")!),
            Post(title: "Chad 4", url: NSURL(string: "https://google.com")!),
            Post(title: "Chad 5", url: NSURL(string: "https://google.com")!),
            Post(title: "Chad 6", url: NSURL(string: "https://google.com")!),
            Post(title: "Chad 7", url: NSURL(string: "https://google.com")!),
            Post(title: "Chad 8", url: NSURL(string: "https://google.com")!),
            Post(title: "Chad 9", url: NSURL(string: "https://google.com")!),
            Post(title: "Chad 10", url: NSURL(string: "https://google.com")!),
        ]
    }
    
    
    @IBAction func refresh(sender: AnyObject) {
        posts = [Post(title: "Hooray!", url: NSURL(string: "https://reddit.com")!)]
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return posts.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("PostCellIdentifier", forIndexPath: indexPath) as! UITableViewCell
        cell.textLabel?.text = posts[indexPath.row].title
        
        return cell
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if let row = tableView.indexPathForSelectedRow()?.row {
            let url = posts[row].url
            let vc = segue.destinationViewController as! WebViewController
            vc.url = url
        }
        
    }
}

