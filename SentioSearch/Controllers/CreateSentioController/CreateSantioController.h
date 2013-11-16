//
//  CreateSantioController.h
//  SentioSearch
//
//  Created by yogesh dalavi on 10/22/13.
//  Copyright (c) 2013 ivikas. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CreateSantioController : UIViewController<UITextViewDelegate,UITextFieldDelegate,UIPickerViewDataSource,UIPickerViewDelegate>
- (IBAction)backClicked:(id)sender;
- (IBAction)createSantioClicked:(id)sender;
@property (strong,nonatomic)UIPickerView *pickerOption;
@property (strong,nonatomic)NSArray *pickerdata;
@property (strong, nonatomic) IBOutlet UIButton *btnDecision;
- (IBAction)showDonatePicker:(id)sender;
@property(strong,nonatomic)UIDatePicker *datePickerView;
@property (strong, nonatomic) IBOutlet UITextField *txtDate_Time;
@property (strong, nonatomic) IBOutlet UITextField *txtfldLedToDecision;
@property (strong, nonatomic) IBOutlet UITextField *txtShouldI;
@property (strong, nonatomic) IBOutlet UILabel *lblTitle;
@property (strong, nonatomic) IBOutlet UILabel *lblSubTitles;
@property (strong, nonatomic) IBOutlet UILabel *lblSubTitle1;
@property (strong, nonatomic) IBOutlet UILabel *lblSubTitle2;

@end
