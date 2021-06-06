//
//  menu 4.m
//  Graphics Tests
//
//  Created by DM on 3/29/13.
//  Copyright (c) 2013 DM. All rights reserved.
//

#import "menu 4.h"



@implementation menu_4
@synthesize subView;

- (void)viewDidLoad
{

    evc = [[effects alloc] init];
    [self addChildViewController:evc];
    [self.view insertSubview:evc.view belowSubview:subView];
    
    tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapHappened)];
    [subView addGestureRecognizer:tap];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (IBAction)fire:(id)sender{
    evc.type = 1;
}

- (IBAction)explosion:(id)sender{
    evc.type = 2;
}

- (IBAction)debris:(id)sender{
    evc.type = 3;
}

- (IBAction)smoke:(id)sender{
    evc.type = 4;
}

- (IBAction)bullet:(id)sender{
    evc.type = 5;
}

- (IBAction)missile:(id)sender{
    evc.type = 6;
}

- (IBAction)gernade:(id)sender{
    evc.type = 7;
}

- (IBAction)startPoint:(id)sender{
    evc.type = 8;
}

- (IBAction)endPoint:(id)sender{
    evc.type = 9;
}

- (IBAction)sparks:(id)sender{
    evc.type = 10;
}

- (IBAction)bubble:(id)sender{
    evc.type = 11;
}

- (IBAction)alerted:(id)sender{
    evc.type = 12;
}

- (IBAction)pissed:(id)sender{
    evc.type = 13;
}

- (IBAction)music:(id)sender{
    evc.type = 14;
}

- (IBAction)signal:(id)sender{
    evc.type = 15;
}

- (IBAction)changeDirection:(id)sender{
    evc.lR *= -1;
}

- (void)tapHappened{
    [evc touchEvent:[tap locationInView:self.view]];
}

- (IBAction)segue:(id)sender{
    [self performSegueWithIdentifier:@"segue5" sender:self];
}

@end
