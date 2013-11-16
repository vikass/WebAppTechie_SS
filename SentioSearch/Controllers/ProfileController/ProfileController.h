//
//  ProfileController.h
//  SentioSearch
//
//  Created by Vikas Sawant on 10/2/13.
//  Copyright (c) 2013 ivikas. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MyProfileView.h"

#define KEY_TITLE @"title"
#define KEY_OPT1 @"option1"
#define KEY_OPT2 @"option2"
#define KEY_OPT3 @"option3"
#define KEY_OPT4 @"option4"
#define KEY_OPT5 @"option5"

@interface ProfileController : SuperViewController<UITextViewDelegate,MyProfileViewDelegate,UIScrollViewDelegate> {
    int selectedQuestionNo;
}
@property (strong, nonatomic) IBOutlet UITabBarItem *tabBar;
@property (strong , nonatomic)UITabBarController *tabBarController;


//ivikas
@property (strong, nonatomic) NSMutableArray *questionsList;
@property (strong, nonatomic) NSMutableArray *profileViewList;
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;

@end
