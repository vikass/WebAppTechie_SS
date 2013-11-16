//
//  MakeDecisionController.h
//  SentioSearch
//
//  Created by yogesh dalavi on 10/21/13.
//  Copyright (c) 2013 ivikas. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MakeDecisionController : UIViewController
- (IBAction)btnBack:(id)sender;
- (IBAction)makeDecision:(id)sender;
- (IBAction)yesClicked:(id)sender;
- (IBAction)noClicked:(id)sender;
@property (strong, nonatomic) IBOutlet UILabel *lblOthersOpinon;
@property (strong, nonatomic) IBOutlet UILabel *lblPercentOpinon;
@property (strong, nonatomic) IBOutlet UILabel *lblReadyToMakeDecision;
@property (strong, nonatomic) IBOutlet UILabel *lblExtremlySatisfied;

@end
