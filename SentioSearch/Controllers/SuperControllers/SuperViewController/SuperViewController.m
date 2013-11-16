//
//  SuperViewController.m
//  SentioSearch
//
//  Created by Vikas Sawant on 10/2/13.
//  Copyright (c) 2013 ivikas. All rights reserved.
//

#import "SuperViewController.h"

@interface SuperViewController ()

@end

@implementation SuperViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - ProgressViewHandler

- (void)showProgressViewWithMessage:(NSString *)msg {
    if (!isProgressLoading) {
        [self performSelectorOnMainThread:@selector(showProgress:) withObject:msg waitUntilDone:YES];
        isProgressLoading = YES;
    }
}

- (void)hideProgressView {
    if (isProgressLoading) {
        [self performSelectorOnMainThread:@selector(hideProgress) withObject:nil waitUntilDone:YES];
        isProgressLoading = NO;
    }
}

- (void)showProgress:(NSString *)txt {
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:self.view animated:YES];
    hud.labelText = txt;
}

- (void)hideProgress {
    [MBProgressHUD hideHUDForView:self.view animated:YES];
}

#pragma mark - Generic Alert

-(void)showAlertForError:(NSString *)msg {
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Error" message:msg delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil, nil];
    [alert show];
}

-(void)showCustomAlertWithTitle:(NSString *)title andMessage:(NSString *)msg {
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:title message:msg delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil, nil];
    [alert show];
}


@end
