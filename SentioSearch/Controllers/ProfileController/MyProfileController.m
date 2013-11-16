//
//  MyProfileController.m
//  SentioSearch
//
//  Created by Vikas Sawant on 10/2/13.
//  Copyright (c) 2013 ivikas. All rights reserved.
//

#import "MyProfileController.h"
#import <QuartzCore/QuartzCore.h>
#import "Constants.h"
@interface MyProfileController ()

@end

@implementation MyProfileController

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
    
    for (UIView *pView in self.profileViews) {
        pView.layer.cornerRadius = 10.0;
    }
    
    self.lbl_section1Title.font=[UIFont fontWithName:CUSOME_FONT size:15.0f];
    self.lbl_section2Title.font=[UIFont fontWithName:CUSOME_FONT size:15.0f];

	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)performBackOperation:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}
@end
