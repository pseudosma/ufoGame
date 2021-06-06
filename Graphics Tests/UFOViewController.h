//
//  UFOViewController.h
//  Graphics Tests
//
//  Created by DM on 3/7/13.
//  Copyright (c) 2013 DM. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>
#import "UFOView.h"
#import "effects.h"

@interface UFOViewController : UIViewController{
    UFOView *ufo;
    UFOBackingView *backing;
    UFOBlueBackingView *blueBacking;
    UFOFlair1View *flairView1;
    UFOFlair2View *flairView2;
    
    CABasicAnimation *a;
    CABasicAnimation *b;
    CABasicAnimation *c;
    CABasicAnimation *d;
    CABasicAnimation *e;
    CABasicAnimation *f;
    CAAnimationGroup *ufoAnimation;
    CAAnimationGroup *flair1Animation;
    CAAnimationGroup *flair2Animation;
    
    effects *evc;
}

@property BOOL gravityBeamOn;
@property BOOL cantAbduct;
@property float xPosition;
@property uint damage;


- (void)goLeft;
- (void)goRight;
- (void)leftSlow;
- (void)rightSlow;
- (void)rightStop;
- (void)leftStop;
- (void)hardLeftStop;
- (void)hardRightStop;
- (void)stop;

- (void)abduct;
- (void)reject;
- (void)takeDamage;
- (void)incrementDamage;

- (void)pause;
- (void)resume;

@end
