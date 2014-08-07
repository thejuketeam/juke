//
//  MenuViewController.swift
//  juke
//
//  Created by Matthew Daiter on 7/23/14.
//  Copyright (c) 2014 Matthew Daiter. All rights reserved.
//

import UIKit

class MenuViewController: MSDynamicsDrawerViewController, MSDynamicsDrawerViewControllerDelegate {

    init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        // Custom initialization
    }

    init(coder aDecoder: NSCoder!)
    {
        super.init(coder: aDecoder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.delegate = self;
        //Set up menu controller
        self.addStylersFromArray([MSDynamicsDrawerScaleStyler.styler(), MSDynamicsDrawerFadeStyler.styler()], forDirection: MSDynamicsDrawerDirection.Left);
        
        //Set main view
        //First, get main storyboard
        var main_storyboard : UIStoryboard = UIStoryboard(name: "Main", bundle: nil);
        
        var home : HomeViewController = main_storyboard.instantiateViewControllerWithIdentifier("Home View Controller") as HomeViewController;
        self.paneViewController = home;
        
        //Set table view
        var leftmenu : LeftMenuViewController = main_storyboard.instantiateViewControllerWithIdentifier("Left Menu View Controller") as LeftMenuViewController;
        
        self.setDrawerViewController(leftmenu, forDirection: MSDynamicsDrawerDirection.Left);
        
        
    }

    //Implement delegate
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // #pragma mark - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue?, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

}
