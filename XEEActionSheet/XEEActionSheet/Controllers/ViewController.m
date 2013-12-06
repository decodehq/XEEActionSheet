//
//  ViewController.m
//  XEEActionSheet
//
//  Created by Andrija Cajic on 06/12/13.
//  Copyright (c) 2013 XEE Tech. All rights reserved.
//

#import "ViewController.h"
#import "XEEActionSheet.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    XEEActionSheet* actionSheet = [XEEActionSheet actionSheetWithTitle:@"Choose your destiny" message:@"Read your options carefully..." cancelButtonTitle:@"Cancel" destructiveButtonTitle:@"Destroy" otherButtonTitles:@"Process", @"Switch", nil];
    [actionSheet handleAction:^(int buttonIndex) {
        NSLog(@"Option chosen %d", buttonIndex);
    }];
    [actionSheet showInView:self.view];
}

@end
