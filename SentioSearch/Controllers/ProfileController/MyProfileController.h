//
//  MyProfileController.h
//  SentioSearch
//
//  Created by Vikas Sawant on 10/2/13.
//  Copyright (c) 2013 ivikas. All rights reserved.
//

#import "SuperViewController.h"

@interface MyProfileController : SuperViewController

- (IBAction)performBackOperation:(id)sender;
@property (strong, nonatomic) IBOutlet UIView *viewOpenDecisions;
@property (strong, nonatomic) IBOutlet UIView *viewDecisionMadeByYou;
@property (strong, nonatomic) IBOutlet UIView *viewDecisionSatisfaction;
@property (strong, nonatomic) IBOutlet UIView *ViewAsAMemberInDecision;
@property (strong, nonatomic) IBOutlet UIView *viewAsMenberInDecision1;
@property (strong, nonatomic) IBOutlet UIView *viewAsMenberInDecision2;

@property (weak, nonatomic) IBOutlet UILabel *lbl_section1Title;
@property (weak, nonatomic) IBOutlet UILabel *lbl_section2Title;

@property (strong, nonatomic) IBOutletCollection(UIView) NSArray *profileViews;

@end
