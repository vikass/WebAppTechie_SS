//
//  DecisionAdditionalController.m
//  SentioSearch
//
//  Created by yogesh dalavi on 10/22/13.
//  Copyright (c) 2013 ivikas. All rights reserved.
//

#import "DecisionAdditionalController.h"
#import "Constants.h"

@interface DecisionAdditionalController ()

@end

@implementation DecisionAdditionalController

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
    
    [self.sliderSmily setMinimumTrackImage: sliderTrackImage forState: UIControlStateNormal];
    [self.sliderSmily setMaximumTrackImage: sliderTrackImage forState: UIControlStateNormal];
    [self.sliderSmily setThumbImage:[UIImage imageNamed:@"bardot.png"] forState:UIControlStateNormal];
    self.sliderSmily.maximumValue=5;
    self.sliderSmily.minimumValue=1;
    self.lblchoice.text=@"At this moment how satisfied  are you with your choice?";

    self.lblchoice.font=[UIFont fontWithName:CUSOME_FONT size:20.0];
    
    self.lblTitle.font=[UIFont fontWithName:CUSOME_FONT size:19.0];
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

- (IBAction)yesClicked:(id)sender {
}

- (IBAction)noClicked:(id)sender {
}

- (IBAction)submitClicked:(id)sender {
}

- (IBAction)smilyMoodChange:(id)sender  {
    int roundedValue = lroundf(self.sliderSmily.value);
    NSLog(@"%d",roundedValue);
    if (roundedValue==1) {
        self.happyImg.image=[UIImage imageNamed:@"Ico_Somewhat Dissatisfied.png"];
        
    }else if(roundedValue==2){
        self.happyImg.image=[UIImage imageNamed:@"Ico_Neither Satisfied nor dissatisfied.png"];
    }
    else if (roundedValue ==3){
        self.happyImg.image =[UIImage imageNamed:@"Ico_Somewhat Satisfied.png" ];
    }
//    else if(roundedValue ==4){
//        self.happyImg.image=[UIImage imageNamed:@"extremly-dis.png"];
//    }
    else if(roundedValue ==5){
        self.happyImg.image=[UIImage imageNamed:@"Ico_Extremely Satisfied.png"];
    }

    
}
@end
