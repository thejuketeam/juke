//
//  SearchViewController.swift
//  juke
//
//  Created by Matthew Daiter on 7/22/14.
//  Copyright (c) 2014 Matthew Daiter. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController {
    //Objects on the page
    @IBOutlet weak var scroll_view : UIScrollView!
    @IBOutlet weak var search_bar : UISearchBar!
    //Need it for the clear background
    var background_toolbar : UIToolbar!
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
        self.view.backgroundColor = UIColor.clearColor()
        background_toolbar = UIToolbar(frame: self.view.frame);
        background_toolbar.barStyle = UIBarStyle.Default;
        self.view.superview.insertSubview(background_toolbar, belowSubview: self.view);
    }
    
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
