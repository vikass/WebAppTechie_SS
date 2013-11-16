//
//  MakeDecisionController.m
//  SentioSearch
//
//  Created by yogesh dalavi on 10/21/13.
//  Copyright (c) 2013 ivikas. All rights reserved.
//

#import "MakeDecisionController.h"
#import "Constants.h"
@interface MakeDecisionController ()

@end

@implementation MakeDecisionController

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
    self.lblOthersOpinon.font=[UIFont fontWithName:CUSOME_FONT size:15.0f];
    self.lblPercentOpinon.font=[UIFont fontWithName:CUSOME_FONT size:17.0f];
    self.lblReadyToMakeDecision.font=[UIFont fontWithName:CUSOME_FONT size:17.0f];
        self.lblExtremlySatisfied.font=[UIFont fontWithName:CUSOME_FONT size:16.0f];
	// Do any additional setup after loading the view.
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (IBAction)btnBack:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

- (IBAction)makeDecision:(id)sender {
}

- (IBAction)yesClicked:(id)sender {
    
}

- (IBAction)noClicked:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

@end
