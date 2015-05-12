//
//  FriendsTableViewController.swift
//  GithubFriends
//
//  Created by Aimee Bragg on 5/12/15.
//  Copyright (c) 2015 Aimee Bragg. All rights reserved.
//

import UIKit

class FriendsTableViewController: UITableViewController {
    
    
    @IBOutlet weak var friendNameField: UITextField!
    
    var friends: [[String:AnyObject?]] = [
    
        [
            "login": "ambragg",
            "id": 12186200,
            "avatar_url": "https://avatars.githubusercontent.com/u/12186200?v=3",
            "gravatar_id": "",
            "url": "https://api.github.com/users/ambragg",
            "html_url": "https://github.com/ambragg",
            "followers_url": "https://api.github.com/users/ambragg/followers",
            "following_url": "https://api.github.com/users/ambragg/following{/other_user}",
            "gists_url": "https://api.github.com/users/ambragg/gists{/gist_id}",
            "starred_url": "https://api.github.com/users/ambragg/starred{/owner}{/repo}",
            "subscriptions_url": "https://api.github.com/users/ambragg/subscriptions",
            "organizations_url": "https://api.github.com/users/ambragg/orgs",
            "repos_url": "https://api.github.com/users/ambragg/repos",
            "events_url": "https://api.github.com/users/ambragg/events{/privacy}",
            "received_events_url": "https://api.github.com/users/ambragg/received_events",
            "type": "User",
            "site_admin": false,
            "name" : "Aimee Bragg",
            "public_repos": 1,
            "public_gists": 0,
            "followers": 7,
            "following": 0,
            "created_at": "2015-04-30T13:11:28Z",
            "updated_at": "2015-05-04T17:54:46Z"
        ]
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    
//    var avatarUrl =
    
    @IBAction func addFriend(sender: AnyObject) {
        
        let endpoint = "https://api.github.com/users/\(friendNameField.text)?client_id=18c2e67eaf44f4a60b76&client_secret=5528dd41089fd0a5de62e7927b849075b65463a0"
        

        
        println(endpoint)
        
        if let url = NSURL(string: endpoint) {
            
            
            let request = NSURLRequest(URL: url)
            
            if let data = NSURLConnection.sendSynchronousRequest(request, returningResponse: nil, error: nil) {
                
                println(data)
                
                if let friendInfo = NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions.MutableContainers, error: nil) as? [String: AnyObject] {
                    
                    println(friendInfo)
                    
                    friends.insert(friendInfo, atIndex: 0)
                    tableView.reloadData()
                }
                
                
            }
            
            
        }
        
    
        
        
        
        friendNameField.text = ""
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

//    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
//        // #warning Potentially incomplete method implementation.
//        // Return the number of sections.
//        return 0
//    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return friends.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("friendCell", forIndexPath: indexPath) as! UITableViewCell
        
        cell.textLabel?.text = friends[indexPath.row]["name"] as? String
        
        
        let avatarURL = NSURL(string: friends[indexPath.row]["avatar_url"]! as! String)
            
            let imageData = NSData(contentsOfURL: avatarURL!)
            
            let image = UIImage(data: imageData!)
            
            cell.imageView!.image = image
            
        
        

        // Configure the cell...

        return cell
    }
  

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the specified item to be editable.
        return true
    }
    */

    
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            
            friends.removeAtIndex(indexPath.row)
            
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

}
