//
//  MyProfileView.h
//  SentioSearch
//
//  Created by Vikas Sawant on 11/5/13.
//  Copyright (c) 2013 ivikas. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol MyProfileViewDelegate <NSObject>

-(void)showNextQuestionWithData:(NSString *)selectedOption;

@end

@interface MyProfileView : UIView<UITextViewDelegate>
@property (weak, nonatomic) IBOutlet UITextView *questionTitle;
@property (weak, nonatomic) IBOutlet UIButton *btnOption1;
@property (weak, nonatomic) IBOutlet UIButton *btnOption2;
@property (weak, nonatomic) IBOutlet UIButton *btnOption3;
@property (weak, nonatomic) IBOutlet UIButton *btnOption4;
@property (weak, nonatomic) IBOutlet UIButton *btnOption5;

@property (weak, nonatomic) id<MyProfileViewDelegate> delegate;
@property (strong, nonatomic) NSMutableDictionary *selectedData;

- (id)initWithFrame:(CGRect)frame andData:(NSMutableDictionary *)data;
- (IBAction)performOptionSelection:(id)sender;

@end
