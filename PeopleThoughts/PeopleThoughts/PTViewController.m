//
//  PTViewController.m
//  PeopleThoughts
//
//  Created by Udit Kakkad on 04/08/14.
//  Copyright (c) 2014 PeopleThoughts. All rights reserved.
//

#import "PTViewController.h"

@interface PTViewController ()

@property (nonatomic, weak) IBOutlet UITextField *usernameTextField;
@property (nonatomic, weak) IBOutlet UITextField *passwordTextField;

@end

@implementation PTViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)didTapLoginButton:(id)sender
{
    [PFUser logInWithUsernameInBackground:self.usernameTextField.text password:self.passwordTextField.text block:^(PFUser *user, NSError *error) {
        if (user != nil) {
            NSLog(@"login successful");
            //TODO: remove this
            self.usernameTextField.userInteractionEnabled = NO;
            self.passwordTextField.userInteractionEnabled = NO;
        }
    }];
}

@end
