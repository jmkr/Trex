//
//  JKMTableViewController.m
//  Trex
//
//  Created by John Meeker on 10/5/13.
//  Copyright (c) 2013 John Meeker. All rights reserved.
//

#import "JKMTableViewController.h"

@interface JKMTableViewController ()

@end

@implementation JKMTableViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
}

- (void)viewDidAppear:(BOOL)animated
{
    // Reshow the status bar when returning from the UIImagePickerController.
    ([[UIApplication sharedApplication] setStatusBarHidden:NO withAnimation:UIStatusBarAnimationNone]);
}

- (IBAction) useCamera: (id)sender
{
    UIImagePickerController *picker = [[UIImagePickerController alloc] init];
    picker.allowsEditing = YES;
    if (([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]))
    {
        picker.sourceType = UIImagePickerControllerSourceTypeCamera;
        [self presentViewController:picker animated:YES completion:nil];
        
        // Hide the status bar.
        ([[UIApplication sharedApplication] setStatusBarHidden:YES withAnimation:UIStatusBarAnimationFade]);
    }
    else
    {
        // Alert: No camera found
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
