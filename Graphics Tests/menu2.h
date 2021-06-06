//
//  menu2.h
//  Graphics Tests
//
//  Created by DM on 3/2/13.
//  Copyright (c) 2013 DM. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>
#import "cowViewController.h"


@interface menu2 : UIViewController{
    cowViewController *cvc;
}

- (IBAction)stop:(id)sender;
- (IBAction)walk:(id)sender;
- (IBAction)panic:(id)sender;
- (IBAction)run:(id)sender;
- (IBAction)charge:(id)sender;
- (IBAction)fall:(id)sender;
- (IBAction)recover:(id)sender;
- (IBAction)changeDirection:(id)sender;
- (IBAction)pause:(id)sender;
- (IBAction)resume:(id)sender;
- (IBAction)flair1:(id)sender;
- (IBAction)flair2:(id)sender;
- (IBAction)flair3:(id)sender;
- (IBAction)segue:(id)sender;

@end
