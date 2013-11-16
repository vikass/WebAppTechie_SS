//
//  SubmitDecisionController.m
//  SentioSearch
//
//  Created by yogesh dalavi on 10/21/13.
//  Copyright (c) 2013 ivikas. All rights reserved.
//

#import "SubmitDecisionController.h"

@interface SubmitDecisionController ()

@end

@implementation SubmitDecisionController

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
    UIImage *sliderTrackImage = [[UIImage imageNamed: @"bar.png"] stretchableImageWithLeftCapWidth: 7 topCapHeight: 0];
    
    [self.decisionSmily setMinimumTrackImage: sliderTrackImage forState: UIControlStateNormal];
    [self.decisionSmily setMaximumTrackImage: sliderTrackImage forState: UIControlStateNormal];
        [self.decisionSmily setThumbImage:[UIImage imageNamed:@"bardot.png"] forState:UIControlStateNormal];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)decisionSelect:(id)sender {
    if(self.seg.selectedSegmentIndex == 0){
        
    }
    if(self.seg.selectedSegmentIndex == 1){
        
    }
    
}
- (IBAction)btnBack:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

- (IBAction)submitYourdecision:(id)sender {
    
}
@end
