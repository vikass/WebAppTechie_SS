//
//  MyProfileView.m
//  SentioSearch
//
//  Created by Vikas Sawant on 11/5/13.
//  Copyright (c) 2013 ivikas. All rights reserved.
//

#import "MyProfileView.h"
#import "Constants.h"

@implementation MyProfileView
@synthesize delegate,selectedData;

- (id)initWithFrame:(CGRect)frame andData:(NSMutableDictionary *)data
{
    self = [super initWithFrame:frame];
    if (self) {
        self = [[[NSBundle mainBundle] loadNibNamed:@"MyProfileView" owner:self options:nil] objectAtIndex:0];
        selectedData = data;
        self.questionTitle.text = [data valueForKey:@"title"];
        self.questionTitle.font=[UIFont fontWithName:CUSOME_FONT size:20.0f];

    }
    return self;
}


- (IBAction)performOptionSelection:(id)sender {
    
    [delegate showNextQuestionWithData:[selectedData valueForKey:@"title"]];
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

-(BOOL)textViewShouldBeginEditing:(UITextView *)textView{
    return NO;
}


@end
