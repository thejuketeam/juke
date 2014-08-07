//
//  LeftMenuViewController.swift
//  juke
//
//  Created by Matthew Daiter on 7/23/14.
//  Copyright (c) 2014 Matthew Daiter. All rights reserved.
//

import UIKit

class LeftMenuViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    //Items in menu
    var items : String[] = ["HOME", "HISTORY", "SHOP", "INVITE FRIENDS", "SETTINGS"];
    @IBOutlet weak var table_view : UITableView!
    
    //Conform to standards of table view
    
    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int {
        return self.items.count;
    }
    
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell! {
        var cell : UITableViewCell = self.table_view.dequeueReusableCellWithIdentifier("cell") as UITableViewCell;
        //var cell : UITableViewCell = UITableViewCell();
        
        cell.textLabel.text = self.items[indexPath.row];
        
        return cell;
    }
    
    func tableView(tableView: UITableView!, didSelectRowAtIndexPath indexPath: NSIndexPath!) {
        
    }

    
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
        self.table_view.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
        
        //let table_background : UIView = UIView();
        //table_background.backgroundColor = UIColor(red: CGFloat(69), green: CGFloat(69), blue: CGFloat(69), alpha: CGFloat(1));
        //self.table_view.backgroundView = table_background;
        self.table_view.backgroundColor = UIColor(red: CGFloat(69), green: CGFloat(69), blue: CGFloat(69), alpha: CGFloat(1));
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
