//
//  menu2.m
//  Graphics Tests
//
//  Created by DM on 3/2/13.
//  Copyright (c) 2013 DM. All rights reserved.
//

#import "menu2.h"

@implementation menu2

- (void)viewDidLoad
{
    self.view.userInteractionEnabled = YES;
    UIView *subView2 = [[UIView alloc] initWithFrame:CGRectMake(10, 12, 50, 60)];
    cvc = [[cowViewController alloc] init];
    [self addChildViewController:cvc];
    [self.view addSubview:subView2];
    [subView2 addSubview:cvc.view];
    
    [super viewDidLoad];
}

- (IBAction)stop:(id)sender{
    [cvc stop];
}
- (IBAction)walk:(id)sender{
    [cvc walk];
}

- (IBAction)panic:(id)sender{
    [cvc panic];
}
- (IBAction)run:(id)sender{
    [cvc run];
}

- (IBAction)charge:(id)sender{
    [cvc charge];
}

- (IBAction)fall:(id)sender{
    [cvc fall];
}
- (IBAction)recover:(id)sender{
    [cvc recover];
}

- (IBAction)changeDirection:(id)sender{
    cvc.facing = [NSNumber numberWithInt:cvc.facing.intValue * -1];
    [cvc changeOrientation];
}
- (IBAction)pause:(id)sender{
    [cvc pause];
}
- (IBAction)resume:(id)sender{
    [cvc resume];
}

- (IBAction)flair1:(id)sender{
    [cvc flair1];
}

- (IBAction)flair2:(id)sender{
    [cvc flair2];
}

- (IBAction)flair3:(id)sender{
    [cvc flair3];
}

- (IBAction)segue:(id)sender{
    [self performSegueWithIdentifier:@"segue3" sender:self];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
