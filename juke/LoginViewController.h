//
//  ViewController.h
//  juke
//
//  Created by Matthew Daiter on 7/17/14.
//  Copyright (c) 2014 Matthew Daiter. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <FacebookSDK/FacebookSDK.h>

//Login page
@interface LoginViewController : UIViewController <FBLoginViewDelegate> {
    
}

@property (weak, nonatomic) IBOutlet FBLoginView* loginView;

@end
