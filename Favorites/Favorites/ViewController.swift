//
//  ViewController.swift
//  Favorites
//
//  Created by Aimee Bragg on 5/28/15.
//  Copyright (c) 2015 Aimee Bragg. All rights reserved.
//

import UIKit
import Parse

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var myFavorites: [PFObject] = []
    
    
    @IBOutlet weak var favoritesTableView: UITableView!
    
    
    @IBOutlet weak var favoriteTextField: UITextField!
    
    
    @IBAction func addFavorite(sender: AnyObject) {
        
        
        let newFavorite = PFObject(className: "Favorites")
        
        newFavorite["name"] = favoriteTextField.text
        newFavorite["user"] = PFUser.currentUser()
        
        newFavorite.saveInBackground()
        
        favoriteTextField.text = ""
        
        myFavorites.insert(newFavorite, atIndex: 0)
        favoritesTableView.reloadData()
        
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        favoritesTableView.delegate = self
        favoritesTableView.dataSource = self
        
        let query = PFQuery(className: "Favorites")
        
//        query.whereKey("user", equalTo: "Aq68OAkiwQ")
        query.whereKey("user", equalTo: PFUser.currentUser()!)
        
        let parseArray = query.findObjects()
        
        println("test1 \(parseArray)")
        
//        
//        self.favoritesTableView.reloadData()
        
        query.findObjectsInBackgroundWithBlock { (objects,
        error) -> Void in
            
            self.myFavorites = objects as! [PFObject]
            
            self.favoritesTableView.reloadData()
           
        }
        
//        var query2 = PFQuery(className:"Favorites")
//        query2.whereKey("user", equalTo:"Aq68OAkiwQ")
//        query2.findObjectsInBackgroundWithBlock {
//            (objects: [AnyObject]?, error: NSError?) -> Void in
//            
//            if error == nil {
//                // The find succeeded.
//                println("Successfully retrieved \(objects!.count) favorites.")
//                // Do something with the found objects
//                if let objects = objects as? [PFObject] {
//                    for object in objects {
//                        println(object.objectId)
//                    }
//                }
//            } else {
//                // Log details of the failure
//                println("Error: \(error!) \(error!.userInfo!)")
//            }
//        }
        
        
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return myFavorites.count
        
       
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell =
            tableView.dequeueReusableCellWithIdentifier("favoriteCell", forIndexPath:indexPath) as! UITableViewCell
        
        cell.textLabel?.text = myFavorites[indexPath.row]["name"] as? String
        
        return cell
        
    }
    
}
    
        
       







