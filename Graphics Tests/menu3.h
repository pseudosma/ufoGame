//
//  menu3.h
//  Graphics Tests
//
//  Created by DM on 3/7/13.
//  Copyright (c) 2013 DM. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UFOViewController.h"

@interface menu3 : UIViewController{
    UFOViewController *uvc;
}

- (IBAction)goLeft:(id)sender;
- (IBAction)goRight:(id)sender;
- (IBAction)leftSlow:(id)sender;
- (IBAction)rightSlow:(id)sender;
- (IBAction)leftStop:(id)sender;
- (IBAction)rightStop:(id)sender;
- (IBAction)hardRightStop:(id)sender;
- (IBAction)hardLeftStop:(id)sender;

- (IBAction)stop:(id)sender;

- (IBAction)abduct:(id)sender;
- (IBAction)takeDamage:(id)sender;

- (IBAction)pause:(id)sender;
- (IBAction)resume:(id)sender;

- (IBAction)segue:(id)sender;

@end
