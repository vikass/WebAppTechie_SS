//
//  CreateSantioController.m
//  SentioSearch
//
//  Created by yogesh dalavi on 10/22/13.
//  Copyright (c) 2013 ivikas. All rights reserved.
//

#import "CreateSantioController.h"
#import "Constants.h"
@interface CreateSantioController ()

@end

@implementation CreateSantioController

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
    self.pickerdata= [[NSMutableArray alloc] initWithObjects:@"None",@"type 1",@"type 2",@"type 3",@"type 4", nil];
    self.pickerOption=[[UIPickerView alloc]initWithFrame:CGRectMake(0,self.view.frame.size.height,self.view.frame.size.width, 250)];
    self.pickerOption.showsSelectionIndicator=YES;
    self.pickerOption.delegate=self;
    self.pickerOption.dataSource=self;
    [self.view addSubview:self.pickerOption];
    
    self.datePickerView = [[UIDatePicker alloc] initWithFrame:CGRectZero];
    self.datePickerView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleTopMargin;
    self.datePickerView.datePickerMode = UIDatePickerModeDateAndTime;
    
    CGRect pickerRect = CGRectMake(    0, self.view.frame.size.height,self.view.frame.size.width, 250);
    self.datePickerView.frame = pickerRect;
    NSDate *today = [NSDate date];
    self.datePickerView.date = today;
    [self.datePickerView addTarget:self action:@selector(updateLabel:) forControlEvents:UIControlEventValueChanged];
    
    [self.view addSubview:self.datePickerView];
    self.lblTitle.font=[UIFont fontWithName:CUSOME_FONT size:20.0f];
      self.lblSubTitles.font=[UIFont fontWithName:CUSOME_FONT size:15.0f];
        self.lblSubTitle1.font=[UIFont fontWithName:CUSOME_FONT size:15.0f];
        self.lblSubTitle2.font=[UIFont fontWithName:CUSOME_FONT size:15.0f];
    //[self.datePickerView setHidden:YES];
	// Do any additional setup after loading the view.
}

- (void)updateLabel:(id)sender
{
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    //[formatter setDateFormat:@"dd MMM, yyyy"];
    [formatter setDateFormat:@"dd/MM/yyyy hh:mm:ss a"];
//    NSDateFormatter *Yformatter = [[NSDateFormatter alloc] init];
//    [Yformatter setDateFormat:@"yyyy"];
//    NSString *selYear=[Yformatter stringFromDate:[sender date]];
//   self.txtDate_Time.text=[NSString stringWithFormat:@"%d",selYear.intValue];
    //Optionally for time zone converstions
    //    [formatter setTimeZone:[NSTimeZone timeZoneWithName:@"..."]];
    
    NSString *stringFromDate = [formatter stringFromDate:[sender date]];
    self.txtDate_Time.text=stringFromDate;
    NSLog(@"value: %@",stringFromDate);
    [self showDatePicker];
   // [self.datePickerView setHidden:YES];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)backClicked:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

- (IBAction)createSantioClicked:(id)sender {
    
}
-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    if(textField.text){
        [textField resignFirstResponder];
        return NO;
    }
    return YES;
}
- (IBAction)showDonatePicker:(id)sender {
    CGRect tFrame = self.pickerOption.frame;
    if (tFrame.origin.y == self.view.frame.size.height) {
        tFrame.origin.y -=220;
    }else {
        
        tFrame.origin.y = self.view.frame.size.height;
    }
    
    [UIView animateWithDuration:0.5 animations:^{
        self.pickerOption.frame = tFrame;
    }];
}
- (void)showDatePicker {
    CGRect tFrame = self.datePickerView.frame;
    if (tFrame.origin.y == self.view.frame.size.height) {
        tFrame.origin.y -=220;
    }else {
        
        tFrame.origin.y = self.view.frame.size.height;
    }
    
    [UIView animateWithDuration:0.5 animations:^{
        self.datePickerView.frame = tFrame;
    }];
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)thePickerView {
    
    return 1;
}
- (NSInteger)pickerView:(UIPickerView *)thePickerView numberOfRowsInComponent:(NSInteger)component {
    
    return [ self.pickerdata count];
}
- (NSString *)pickerView:(UIPickerView *)thePickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    
    return [self.pickerdata objectAtIndex:row];
    
}
-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    NSString *itemKey = [self.pickerdata objectAtIndex:row];
    [self.btnDecision setTitle:itemKey forState:UIControlStateNormal];
    
    [self showDonatePicker:self];
    //[self.pickerDonated setHidden:YES];
}

-(BOOL)textFieldShouldBeginEditing:(UITextField *)textField{
    BOOL result;
    if (textField == self.txtfldLedToDecision) {
        result = YES;
    }
    if (textField == self.txtShouldI) {
        result = YES;
    }
    if (textField == self.txtDate_Time) {
        [self showDatePicker];
        result = NO;
    }
return result;
}

-(void)textFieldDidBeginEditing:(UITextField *)textField{
    
}
@end
