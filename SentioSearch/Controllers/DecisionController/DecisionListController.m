//
//  DecisionListController.m
//  SentioSearch
//
//  Created by yogesh dalavi on 10/21/13.
//  Copyright (c) 2013 ivikas. All rights reserved.
//

#import "DecisionListController.h"
#import "Constants.h"
@interface DecisionListController ()

@end

@implementation DecisionListController

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
    self.lbltitle.font=[UIFont fontWithName:CUSOME_FONT size:22.0f];
//    UIButton *back=[[UIButton alloc]initWithFrame:CGRectMake(7, 7, 30, 30)];
//    [back addTarget:self action:@selector(backClicked:) forControlEvents:UIControlEventTouchUpInside];
//    back.backgroundColor=[UIColor clearColor];
//    back.titleLabel.text=@"<";
//    back.titleLabel.font=[UIFont boldSystemFontOfSize:22.0f];
    
	// Do any additional setup after loading the view.
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnBack:(id)sender {
     [self.navigationController popViewControllerAnimated:YES];
}

-(BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text{
    if ([text isEqualToString:@"\n"]) {
        [textView resignFirstResponder];
        return NO;
    }
    return YES;
}
-(BOOL)textViewShouldBeginEditing:(UITextView *)textView{
    return NO;
}
- (IBAction)makeDecisionClicked:(id)sender {
    
    [self performSegueWithIdentifier:@"MakeDecisionSegue" sender:self];
}
@end
