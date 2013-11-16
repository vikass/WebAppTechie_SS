//
//  LoginController.h
//  SentioSearch
//
//  Created by Vikas Sawant on 9/30/13.
//  Copyright (c) 2013 ivikas. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>
#import "DBAccess.h"


@interface LoginController : SuperViewController<UITabBarControllerDelegate,UITabBarDelegate>
@property (weak, nonatomic) IBOutlet UIView *roundedView;
@property (weak, nonatomic) IBOutlet UITextField *txtUserName;
@property (weak, nonatomic) IBOutlet UITextField *txtPassword;
- (IBAction)performLoginAction:(id)sender;

@end
