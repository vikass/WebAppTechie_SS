//
//  DecisionListController.h
//  SentioSearch
//
//  Created by yogesh dalavi on 10/21/13.
//  Copyright (c) 2013 ivikas. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DecisionListController : UIViewController<UITextFieldDelegate,UITextViewDelegate>

- (IBAction)btnBack:(id)sender;
@property (strong, nonatomic) IBOutlet UILabel *lbltitle;
- (IBAction)makeDecisionClicked:(id)sender;

@end
