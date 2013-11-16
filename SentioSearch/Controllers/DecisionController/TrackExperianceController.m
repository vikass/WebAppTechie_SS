//
//  TrackExperianceController.m
//  SentioSearch
//
//  Created by yogesh dalavi on 10/22/13.
//  Copyright (c) 2013 ivikas. All rights reserved.
//

#import "TrackExperianceController.h"
#import "Constants.h"
@interface TrackExperianceController ()

@end

@implementation TrackExperianceController

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
    self.lblTitle.font=[UIFont fontWithName:CUSOME_FONT size:20.0f];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)backClicked:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

- (IBAction)submitDecision:(id)sender {
    [self performSegueWithIdentifier:@"decisionAdditionalSegue" sender:self];
}

-(BOOL)textViewShouldBeginEditing:(UITextView *)textView{
    return NO;
}

@end
