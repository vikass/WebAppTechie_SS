//
//  SuperViewController.h
//  SentioSearch
//
//  Created by Vikas Sawant on 10/2/13.
//  Copyright (c) 2013 ivikas. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MBProgressHUD.h"

@interface SuperViewController : UIViewController<UIWebViewDelegate> {
    BOOL isProgressLoading;
    
}

-(void)showAlertForError:(NSString *)msg;
-(void)showCustomAlertWithTitle:(NSString *)title andMessage:(NSString *)msg;

-(void)showProgressViewWithMessage:(NSString *)msg;
-(void)hideProgressView;

