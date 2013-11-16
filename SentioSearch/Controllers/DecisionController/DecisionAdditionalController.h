//
//  DecisionAdditionalController.h
//  SentioSearch
//
//  Created by yogesh dalavi on 10/22/13.
//  Copyright (c) 2013 ivikas. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DecisionAdditionalController : UIViewController
@property (strong, nonatomic) IBOutlet UISlider *sliderSmily;
- (IBAction)backClicked:(id)sender;
- (IBAction)yesClicked:(id)sender;
- (IBAction)noClicked:(id)sender;
- (IBAction)submitClicked:(id)sender;

- (IBAction)smilyMoodChange:(id)sender;
@property (strong, nonatomic) IBOutlet UIImageView *happyImg;
@property (strong, nonatomic) IBOutlet UIImageView *sadImg;
@property (strong, nonatomic) IBOutlet UILabel *lblchoice;
@property (strong, nonatomic) IBOutlet UILabel *lblTitle;

@end
