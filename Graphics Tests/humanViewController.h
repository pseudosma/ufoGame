//
//  humanViewController.h
//  Graphics Tests
//
//  Created by DM on 2/28/13.
//  Copyright (c) 2013 DM. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>
#import <UIKit/UIKit.h>
#import "headView.h"
#import "bodyView.h"
#import "limbView.h"
#import "characterViewController.h"

@interface humanViewController : characterViewController{

    CGAffineTransform lArmTransform;
    CGAffineTransform rArmTransform;
    CGAffineTransform rLegTransform;
    CGAffineTransform lLegTransform;
    
    headView *head;
    bodyView *body;
    armView *rLeg;
    armView *lLeg;
    armView *rArm;
    armView *lArm;
    UIView *rHand;
    UIView *lHand;
}

- (void)stop;
- (void)walk;
- (void)panic;
- (void)run;
- (void)panicRun;
- (void)fall;
- (void)recover;
- (void)changeOrientation;
- (void)pause;
- (void)resume;
- (void)removeObjectsInHands;

//methods for animation base

- (void)animateAndStopSoon;
- (void)animateAndStop;
- (void)animateAndContinue;



@end