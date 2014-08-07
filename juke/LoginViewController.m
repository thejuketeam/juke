//
//  ViewController.m
//  juke
//
//  Created by Matthew Daiter on 7/17/14.
//  Copyright (c) 2014 Matthew Daiter. All rights reserved.
//

#import "LoginViewController.h"
#import "juke-Swift.h"
#import "AppDelegate.h"

@interface LoginViewController () <FBLoginViewDelegate>

@end

@implementation LoginViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    //Facebook setup
    self.loginView.delegate = self;
    self.loginView.readPermissions = @[@"public_profile", @"user_friends"];
    //Check if logged in. If so, then transition to next page. Else, return to current page.
    
}

- (void)loginViewFetchedUserInfo:(FBLoginView *)loginView
                            user:(id<FBGraphUser>)user {
    //Pull data from user, and transition to the next page.
    
    //Make home page view controller
    printf("fetched user info\n");
    //HomeViewController* home_view_controller = [[HomeViewController alloc] init];
    //[self presentViewController:home_view_controller animated:YES completion:nil];
}

- (void)loginViewShowingLoggedInUser:(FBLoginView *)loginView {
    printf("logged in\n");
    //HomeViewController* home_view_controller = [[HomeViewController alloc] init];
    //[self presentViewController:home_view_controller animated:YES completion:nil];
}

- (void)loginViewShowingLoggedOutUser:(FBLoginView *)loginView {
    printf("Transitioning\n");

}

// Handle possible errors that can occur during login
- (void)loginView:(FBLoginView *)loginView handleError:(NSError *)error {
    NSString *alertMessage, *alertTitle;
    
    // If the user should perform an action outside of you app to recover,
    // the SDK will provide a message for the user, you just need to surface it.
    // This conveniently handles cases like Facebook password change or unverified Facebook accounts.
    if ([FBErrorUtility shouldNotifyUserForError:error]) {
        alertTitle = @"Facebook error";
        alertMessage = [FBErrorUtility userMessageForError:error];
        
        // This code will handle session closures that happen outside of the app
        // You can take a look at our error handling guide to know more about it
        // https://developers.facebook.com/docs/ios/errors
    } else if ([FBErrorUtility errorCategoryForError:error] == FBErrorCategoryAuthenticationReopenSession) {
        alertTitle = @"Session Error";
        alertMessage = @"Your current session is no longer valid. Please log in again.";
        
        // If the user has cancelled a login, we will do nothing.
        // You can also choose to show the user a message if cancelling login will result in
        // the user not being able to complete a task they had initiated in your app
        // (like accessing FB-stored information or posting to Facebook)
    } else if ([FBErrorUtility errorCategoryForError:error] == FBErrorCategoryUserCancelled) {
        NSLog(@"user cancelled login");
        
        // For simplicity, this sample handles other errors with a generic message
        // You can checkout our error handling guide for more detailed information
        // https://developers.facebook.com/docs/ios/errors
    } else {
        alertTitle  = @"Something went wrong";
        alertMessage = @"Please try again later.";
        NSLog(@"Unexpected error:%@", error);
    }
    
    if (alertMessage) {
        [[[UIAlertView alloc] initWithTitle:alertTitle
                                    message:alertMessage
                                   delegate:nil
                          cancelButtonTitle:@"OK"
                          otherButtonTitles:nil] show];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
