//
//  TrackExperianceController.h
//  SentioSearch
//
//  Created by yogesh dalavi on 10/22/13.
//  Copyright (c) 2013 ivikas. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TrackExperianceController : UIViewController<UITextViewDelegate>
- (IBAction)backClicked:(id)sender;
@property (strong, nonatomic) IBOutlet UILabel *lblTitle;

- (IBAction)submitDecision:(id)sender;

@end
