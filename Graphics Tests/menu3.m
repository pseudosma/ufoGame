//
//  menu3.m
//  Graphics Tests
//
//  Created by DM on 3/7/13.
//  Copyright (c) 2013 DM. All rights reserved.
//

#import "menu3.h"

@implementation menu3

- (void)viewDidLoad
{
    UIView *subview = [[UIView alloc]initWithFrame:CGRectMake(30, 30, 130, 60)];
    [self.view addSubview:subview];
    uvc = [[UFOViewController alloc] init];
    [self addChildViewController:uvc];
    [subview addSubview:uvc.view];
    
    [super viewDidLoad];
	
}

- (IBAction)goLeft:(id)sender{
    [uvc goLeft];
}

- (IBAction)goRight:(id)sender{
    [uvc goRight];
}

- (IBAction)leftSlow:(id)sender{
    [uvc leftSlow];
}

- (IBAction)rightSlow:(id)sender{
    [uvc rightSlow];
}

- (IBAction)leftStop:(id)sender{
    [uvc leftStop];
}

- (IBAction)rightStop:(id)sender{
    [uvc rightStop];
}

- (IBAction)stop:(id)sender{
    [uvc stop];
}

- (IBAction)abduct:(id)sender{
    [uvc abduct];
}

- (IBAction)takeDamage:(id)sender{
    [uvc takeDamage];
}

- (IBAction)pause:(id)sender{
    [uvc pause];
}

- (IBAction)resume:(id)sender{
    [uvc resume];
}

- (IBAction)hardRightStop:(id)sender{
    [uvc hardRightStop];
}

- (IBAction)hardLeftStop:(id)sender{
    [uvc hardLeftStop];
}

- (IBAction)segue:(id)sender{
    [self performSegueWithIdentifier:@"segue4" sender:self];
}

- (void)didReceiveMemoryWarning{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
