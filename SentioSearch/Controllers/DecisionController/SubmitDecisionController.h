//
//  SubmitDecisionController.h
//  SentioSearch
//
//  Created by yogesh dalavi on 10/21/13.
//  Copyright (c) 2013 ivikas. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SubmitDecisionController : UIViewController
- (IBAction)decisionSelect:(id)sender;
@property (strong, nonatomic) IBOutlet UISegmentedControl *seg;
@property (strong, nonatomic) IBOutlet UISlider *decisionSmily;
- (IBAction)btnBack:(id)sender;
- (IBAction)submitYourdecision:(id)sender;

@end
