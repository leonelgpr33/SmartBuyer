//
//  ViewController.m
//  SmartBuyer
//
//  Created by LI Leonel G. Pérez Ramos on 29/03/15.
//  Copyright (c) 2015 LI Leonel G. Pérez Ramos. All rights reserved.
//

#import "Login.h"
#import "SWRevealViewController.h"
#import <FBSDKCoreKit/FBSDKCoreKit.h>
#import <FBSDKLoginKit/FBSDKLoginKit.h>

@interface Login ()

@end

@implementation Login

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title=@"Loggin";
    SWRevealViewController *revealViewController = self.revealViewController;
    if ( revealViewController )
    {
        [self.menuButton setTarget: self.revealViewController];
        [self.menuButton setAction: @selector( revealToggle: )];
        [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
    }

    // Do any additional setup after loading the view, typically from a nib.
    if ([FBSDKAccessToken currentAccessToken]) {
        // User is logged in, do work such as go to next view controller.
        
        NSLog(@"te loggeaste cabrón");
        [self performSegueWithIdentifier:@"GoToPresupuesto" sender:self];
        
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
