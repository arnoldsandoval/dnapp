//
//  StoriesTableViewController.swift
//  DNApp
//
//  Created by Arnold Sandoval on 2/12/16.
//  Copyright © 2016 Arnold Sandoval. All rights reserved.
//

import UIKit

class StoriesTableViewController: UITableViewController {

    
    @IBAction func MenuButtonDidTouch(sender: AnyObject) {
        performSegueWithIdentifier("MenuSegue", sender: self)
    }
    
    @IBAction func LoginButtonDidTouch(sender: AnyObject) {
        performSegueWithIdentifier("LoginSegue", sender: self)
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("StoryCell")! as UITableViewCell
        
        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        performSegueWithIdentifier("WebSegue", sender: self)
        
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        
    }
 
    // Had to do manually, didnt work in storyboard (???)
    override func tableView(tableView:UITableView, heightForRowAtIndexPath indexPath:NSIndexPath) -> CGFloat
    {
        return 100
    }
    
}
