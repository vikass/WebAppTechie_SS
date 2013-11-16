//
//  MainTabController.m
//  SentioSearch
//
//  Created by Vikas Sawant on 10/2/13.
//  Copyright (c) 2013 ivikas. All rights reserved.
//

#import "MainTabController.h"

@interface MainTabController ()

@end

@implementation MainTabController

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
	// Do any additional setup after loading the view.
    for(UITabBarItem *tbItem in [[self tabBar] items])
    {
        [tbItem setFinishedSelectedImage:[self imageForTabBarItem:[tbItem tag] selected:YES]
             withFinishedUnselectedImage:[self imageForTabBarItem:[tbItem tag] selected:NO]];
    }
}

- (UIImage *)imageForTabBarItem:(int)tab selected:(BOOL)selected
{
    NSString *imageName;
    switch(tab)
    {
        case 0:
            imageName = [NSString stringWithFormat:@"tab1_%@.png", selected ? @"on":@"off"];
            break;
        case 1:
            imageName = [NSString stringWithFormat:@"tab2_%@.png", selected ? @"on":@"off"];
            break;
        case 2:
            imageName = [NSString stringWithFormat:@"tab3_%@.png", selected ? @"on":@"off"];
            break;
    }
    return [UIImage imageNamed:imageName];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
