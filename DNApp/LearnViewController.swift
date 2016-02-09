//
//  LearnViewController.swift
//  DNApp
//
//  Created by Arnold Sandoval on 2/8/16.
//  Copyright © 2016 Arnold Sandoval. All rights reserved.
//

import UIKit

class LearnViewController: UIViewController {

    
    @IBOutlet weak var bookImage: SpringImageView!
    @IBOutlet weak var dialogView: DesignableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(true)
        
        dialogView.animation = "zoomIn"
        dialogView.animate()
        
    }
    
    @IBAction func learnButtonDidTouch(sender: AnyObject) {
        bookImage.animation = "pop"
        bookImage.animate()
    }

    @IBAction func closeButtonDidTouch(sender: AnyObject) {
        dialogView.animation = "fall"
        dialogView.animateNext {
            self.dismissViewControllerAnimated(true, completion: nil)
        }
    }
}
