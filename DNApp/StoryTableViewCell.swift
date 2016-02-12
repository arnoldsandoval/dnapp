//
//  StoryTableViewCell.swift
//  DNApp
//
//  Created by Arnold Sandoval on 2/12/16.
//  Copyright © 2016 Arnold Sandoval. All rights reserved.
//

import UIKit

protocol StoryTableViewCellDelegate: class {
    
    func storyTableViewCellDidTouchUpvote(cell: StoryTableViewCell, sender: AnyObject)
    func storyTableViewCellDidTouchComment(cell: StoryTableViewCell, sender: AnyObject)
    
}

class StoryTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var badgeImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var commentButton: SpringButton!
    @IBOutlet weak var upvoteButton: SpringButton!
    @IBOutlet weak var authorLabel: UILabel!
    @IBOutlet weak var avatarImageView: UIImageView!
    
    weak var delegate: StoryTableViewCellDelegate?
    
    @IBAction func upvoteButtonDidTouch(sender: AnyObject) {
        upvoteButton.animation = "pop"
        upvoteButton.force = 3
        upvoteButton.animate()
        
        delegate?.storyTableViewCellDidTouchUpvote(self, sender: sender)
        
    }
    
    @IBAction func commentButtonDidTouch(sender: AnyObject) {
        commentButton.animation = "pop"
        commentButton.force = 3
        commentButton.animate()
        
        delegate?.storyTableViewCellDidTouchComment(self, sender: sender)
    }
 
    func configureWithStory(story: AnyObject) {
        let title = story["title"]! as! String
        let badge = story["badge"]! as! String
        //        let userPortraitUrl = story["user_portrait_url"] as! String
        let userDisplayName = story["user_display_name"]! as! String
        let userJob = story["user_job"]! as! String
        let createdAt = story["created_at"]! as! String
        let voteCount = story["vote_count"]! as! Int
        let commentCount = story["comment_count"]! as! Int
        
        
        titleLabel.text = title
        
        badgeImageView.image = UIImage(named: "badge-" + badge)
        avatarImageView.image = UIImage(named: "content-avatar-default")
        authorLabel.text = userDisplayName + ", " + userJob
        timeLabel.text = timeAgoSinceDate(dateFromString(createdAt, format: "yy-MM-dd'T'HH:mm:ssZ"), numericDates: true)
        upvoteButton.setTitle(String(voteCount), forState: UIControlState.Normal)
        commentButton.setTitle(String(commentCount), forState: UIControlState.Normal);
    }
}
