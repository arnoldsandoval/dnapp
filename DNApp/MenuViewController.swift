//
//  MenuViewController.swift
//  DNApp
//
//  Created by Arnold Sandoval on 2/12/16.
//  Copyright © 2016 Arnold Sandoval. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController {

    @IBOutlet weak var dialogView: DesignableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func closeButtonDidTouch(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
        dialogView.animation = "fall"
        dialogView.animate()
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
