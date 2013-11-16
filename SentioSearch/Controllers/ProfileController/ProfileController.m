//
//  ProfileController.m
//  SentioSearch
//
//  Created by Vikas Sawant on 10/2/13.
//  Copyright (c) 2013 ivikas. All rights reserved.
//

#import "ProfileController.h"
#import "Constants.h"
@interface ProfileController ()

@end

@implementation ProfileController
@synthesize scrollView,profileViewList;
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
    
    selectedQuestionNo = 0;

    profileViewList = [NSMutableArray array];
    _questionsList = [NSMutableArray array];
    
    NSMutableDictionary *que1 = [NSMutableDictionary dictionaryWithObjectsAndKeys:@"I DEFINE MYSELF AS A UNIQUE PERSON SEPERATE FROM OTHERS",KEY_TITLE,
                                 @"Strongly Agree",KEY_OPT1,
                                 @"SomeWhat Agree",KEY_OPT2,
                                 @"Nighter Agree not Disagree",KEY_OPT3,
                                 @"Somewhat Disagree",KEY_OPT4,
                                 @"Strongly Disagree",KEY_OPT5, nil];

    NSMutableDictionary *que2 = [NSMutableDictionary dictionaryWithObjectsAndKeys:@"I AM SHORT TEMPERED",KEY_TITLE,
                                 @"Strongly Agree",KEY_OPT1,
                                 @"SomeWhat Agree",KEY_OPT2,
                                 @"Nighter Agree not Disagree",KEY_OPT3,
                                 @"Somewhat Disagree",KEY_OPT4,
                                 @"Strongly Disagree",KEY_OPT5, nil];

    NSMutableDictionary *que3 = [NSMutableDictionary dictionaryWithObjectsAndKeys:@"I HAVE POSITIVE ATTITUDE",KEY_TITLE,
                                 @"Strongly Agree",KEY_OPT1,
                                 @"SomeWhat Agree",KEY_OPT2,
                                 @"Nighter Agree not Disagree",KEY_OPT3,
                                 @"Somewhat Disagree",KEY_OPT4,
                                 @"Strongly Disagree",KEY_OPT5, nil];

    NSMutableDictionary *que4 = [NSMutableDictionary dictionaryWithObjectsAndKeys:@"I AM LOVING AND CARING",KEY_TITLE,
                                 @"Strongly Agree",KEY_OPT1,
                                 @"SomeWhat Agree",KEY_OPT2,
                                 @"Nighter Agree not Disagree",KEY_OPT3,
                                 @"Somewhat Disagree",KEY_OPT4,
                                 @"Strongly Disagree",KEY_OPT5, nil];

    NSMutableDictionary *que5 = [NSMutableDictionary dictionaryWithObjectsAndKeys:@"I AM SELF CENTERED",KEY_TITLE,
                                 @"Strongly Agree",KEY_OPT1,
                                 @"SomeWhat Agree",KEY_OPT2,
                                 @"Nighter Agree not Disagree",KEY_OPT3,
                                 @"Somewhat Disagree",KEY_OPT4,
                                 @"Strongly Disagree",KEY_OPT5, nil];

    [_questionsList addObject:que1];
    [_questionsList addObject:que2];
    [_questionsList addObject:que3];
    [_questionsList addObject:que4];
    [_questionsList addObject:que5];
    
    scrollView.contentSize = CGSizeMake(scrollView.frame.size.width *(_questionsList.count), scrollView.frame.size.height);
    scrollView.showsHorizontalScrollIndicator = NO;
    scrollView.showsVerticalScrollIndicator = NO;
    scrollView.scrollsToTop = NO;
    scrollView.scrollEnabled = NO;
    scrollView.delegate = self;
    
    [self loadScrollViewWithPage];
}

- (void)loadProfileViews {
    int i = 0;
    for (NSMutableDictionary *dict in _questionsList) {
        CGRect vFrame;
        if (i==0) {
            vFrame = CGRectMake(0, 0, 320, 366);
        }else {
            vFrame = CGRectMake(320 * i, 0, 320, 366);
        }
        MyProfileView *profileView = [[MyProfileView alloc] initWithFrame:CGRectMake(0, 0, 320, 366) andData:dict];
        [profileViewList addObject:profileView];

        i++;
    }
    
    [self loadScrollViewWithPage];
}

- (void)loadScrollViewWithPage
{
    for (int i = 0; i < _questionsList.count; i++) {
        CGRect frame;
        frame.origin.x = self.scrollView.frame.size.width * i;
        frame.origin.y = 0;
        frame.size = self.scrollView.frame.size;
        
        UIView *subview = [[UIView alloc] initWithFrame:frame];
        
        MyProfileView *profileView = [[MyProfileView alloc] initWithFrame:frame andData:[_questionsList objectAtIndex:i]];
        profileView.delegate = self;
        [subview addSubview:profileView];
        [self.scrollView addSubview:subview];
    }
    
    self.scrollView.contentSize = CGSizeMake(self.scrollView.frame.size.width * _questionsList.count, self.scrollView.frame.size.height);

}

-(void)scrollViewDidScroll:(UIScrollView *)scrView {
    NSLog(@"offset :%@",NSStringFromCGPoint(scrView.contentOffset));
}



-(void)setFinishedSelectedImage: withFinishedUnselectedImage {
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



-(BOOL)textViewShouldBeginEditing:(UITextView *)textView{
    return NO;
}


- (void)showNextQuestionWithData:(NSString *)selectedOption {
    NSLog(@"selected question - %@",selectedOption);
    if (selectedQuestionNo < _questionsList.count - 1) {
        selectedQuestionNo = selectedQuestionNo + 1;
        float xpoint = self.scrollView.frame.size.width * selectedQuestionNo;
        
        [self.scrollView setContentOffset:CGPointMake(xpoint, 0) animated:YES];

    }

    
}
@end
