//
//  HomeViewController.swift
//  juke
//
//  Created by Matthew Daiter on 7/22/14.
//  Copyright (c) 2014 Matthew Daiter. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    //Objects on the page
    @IBOutlet weak var search_button : UIBarButtonItem!
    @IBOutlet weak var menu_button : UIBarButtonItem!
    @IBOutlet weak var scroll_view : UIScrollView!
    
    init(coder aDecoder: NSCoder!)
    {
        super.init(coder: aDecoder)
    }
    
    init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        // Custom initialization
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func search_button_pressed(sender : AnyObject){

    }
    
    @IBAction func menu_button_pressed(sender : AnyObject){
        
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
