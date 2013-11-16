//
//  DecisionController.m
//  SentioSearch
//
//  Created by Vikas Sawant on 10/2/13.
//  Copyright (c) 2013 ivikas. All rights reserved.
//

#import "DecisionController.h"

@interface DecisionController ()

@end

@implementation DecisionController

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
    
    UISwipeGestureRecognizer  *swipeLeft = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(handleleftSwipe:)];
    swipeLeft.numberOfTouchesRequired = 1;//give required num of touches here ..
    swipeLeft.direction = UISwipeGestureRecognizerDirectionLeft;
    swipeLeft.delegate = (id)self;
    [self. view addGestureRecognizer:swipeLeft];
    
    UISwipeGestureRecognizer  *swipeRight = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(handlerightSwipe:)];
    swipeRight.numberOfTouchesRequired = 1;//give required num of touches here ..
    swipeRight.delegate = (id)self;
    swipeRight.direction = UISwipeGestureRecognizerDirectionRight;
    [self.view addGestureRecognizer:swipeRight];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)handleleftSwipe:(UISwipeGestureRecognizer *)recognizer{
    [self performSegueWithIdentifier:@"TrackDecisionSegue" sender:self];
}
-(void)handlerightSwipe:(UISwipeGestureRecognizer *)recognizer{
    [self performSegueWithIdentifier:@"TrackExpSegue" sender:self];
}
- (IBAction)createDecision:(id)sender {
    [self performSegueWithIdentifier:@"CreateDecisionSegue" sender:self];
    
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if([[segue identifier]isEqualToString:@"CreateDecisionSegue"]){
        
    }
}


@end
