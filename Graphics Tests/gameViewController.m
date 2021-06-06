//
//  gameViewController.m
//  Graphics Tests
//
//  Created by DM on 2/24/13.
//  Copyright (c) 2013 DM. All rights reserved.
//

#import "gameViewController.h"

@implementation gameViewController
@synthesize sizing, positioning;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
    }
    return self;
}

- (void)viewDidLoad
{
    
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}
-(void)setSizing{
    if ([UIScreen mainScreen].bounds.size.height != 568) {
        sizing = 0;
    }else{
        sizing = 88.0;
    }
    positioning = sizing * 0.5;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
