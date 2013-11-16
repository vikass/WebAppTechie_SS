//
//  LoginController.m
//  SentioSearch
//
//  Created by Vikas Sawant on 9/30/13.
//  Copyright (c) 2013 ivikas. All rights reserved.
//

#import "LoginController.h"
#import "Constants.h"

@interface LoginController ()

@end

@implementation LoginController

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
    self.roundedView.layer.cornerRadius = 10.0;
    
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (IBAction)performLoginAction:(id)sender {
    [self.txtUserName resignFirstResponder];
    [self.txtPassword resignFirstResponder];
    
    if(self.txtUserName.text.length == 0 && self.txtPassword.text.length == 0) {
        [super showAlertForError:ALERT_MSG_BLANK_EMAIL_PASSWORD];
        
    }else if(self.txtUserName.text.length == 0)
    {
        [super showAlertForError:ALERT_MSG_BLANK_EMAIL];
        
    }else if(self.txtPassword.text.length == 0)
    {
        [super showAlertForError:ALERT_MSG_BLANK_PASSWORD];
        
    } else
    {
        [super showProgressViewWithMessage:@""];
        [self performSegueWithIdentifier:@"LoginSegue" sender:self];
        
//        self.view.userInteractionEnabled = NO;
        
        [self performSelectorInBackground:@selector(loginUser) withObject:nil];
//        self.view.userInteractionEnabled = YES;
    }
}

- (void)loginUser {
    DBAccess *objDB = [DBAccess createDBAccess];
    [objDB loginToSentioWithUserName:self.txtUserName.text andPass:self.txtPassword.text];
}

#pragma mark - UITextFieldDelegate

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"LoginSegue"]) {
        [super hideProgressView];
    }
}
@end
