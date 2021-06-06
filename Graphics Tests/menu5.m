//
//  menu5.m
//  Graphics Tests
//
//  Created by DM on 4/4/13.
//  Copyright (c) 2013 DM. All rights reserved.
//

#import "menu5.h"

@interface menu5 ()

@end

@implementation menu5

- (void)viewDidLoad
{
    UIView *clockHolder = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 100, 50)];
    tvc = [[timeClock alloc] init];
    tvc.timerTimeAllocation = 2;
    [self.view addSubview:clockHolder];
    [self addChildViewController:tvc];
    [clockHolder addSubview:tvc.view];
    [super viewDidLoad];
	
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)segue:(id)sender{
    [self performSegueWithIdentifier:@"segue6" sender:self];
}


@end
