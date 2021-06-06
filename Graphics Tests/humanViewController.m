//
//  humanViewController.m
//  Graphics Tests
//
//  Created by DM on 2/28/13.
//  Copyright (c) 2013 DM. All rights reserved.
//

#import "humanViewController.h"

@implementation humanViewController
@synthesize facing, currentState, tag, moveDuration;
 
- (void)viewDidLoad
 {
     //If facing = 1 character faces left, if it's -1, character faces right
     facing = [NSNumber numberWithInt:1];
 
     self.view.frame = CGRectMake(0, 0, 50, 60);
     self.view.bounds = CGRectMake(0, 0, 50, 60);
     self.view.backgroundColor = [UIColor clearColor];
     head = [[headView alloc]initWithFrame:CGRectMake(14, 6, 17, 17)];
 
     body = [[bodyView alloc]initWithFrame:CGRectMake(15, 19, 16, 26)];
 
     lArm = [[armView alloc]initWithFrame:CGRectMake(16, 17, 6, 21)];
     lArm.layer.anchorPoint = CGPointMake(.5,.1);
     lArm.transform = CGAffineTransformMakeRotation(.6);
 
     rArm = [[armView alloc]initWithFrame:CGRectMake(25, 17, 6, 21)];
 
     rArm.layer.anchorPoint = CGPointMake(.5,.1);
     rArm.transform = CGAffineTransformMakeRotation(-.6);
 
     rLeg = [[armView alloc]initWithFrame:CGRectMake(18, 29, 6, 21)];
     rLeg.layer.anchorPoint = CGPointMake(.5,0);
     rLeg.transform = CGAffineTransformMakeRotation(.3);
 
     lLeg = [[armView alloc]initWithFrame:CGRectMake(23, 29, 6, 21)];
     lLeg.layer.anchorPoint = CGPointMake(.5,0);
     lLeg.transform = CGAffineTransformMakeRotation(-.3);
 
     lArmTransform = lArm.transform;
     rArmTransform = rArm.transform;
     rLegTransform = rLeg.transform;
     lLegTransform = lLeg.transform;
     
     rHand = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 1, 1)];
     lHand = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 1, 1)];
     lHand.clipsToBounds = NO;
     lHand.backgroundColor = [UIColor clearColor];
     rHand.clipsToBounds = NO;
     rHand.backgroundColor = [UIColor clearColor];
     
  //The order that these views is important for animating subclasses of humanViewController
     [self.view addSubview:lArm];
     [self.view addSubview:rLeg];
     [self.view addSubview:lLeg];
     [self.view addSubview:body];
     [self.view addSubview:rArm];
     [self.view addSubview:head];
     [lArm addSubview:lHand];
     [rArm addSubview:rHand];
 
     orientation = CGAffineTransformMake(1 * facing.intValue, 0, 0, 1, 0, 0);
     [self resetAllTransforms];
      
     [super viewDidLoad];
 }
 
 - (void)didReceiveMemoryWarning
 {
     [super didReceiveMemoryWarning];
 // Dispose of any resources that can be recreated.
 }
 
 #pragma mark - Accessor Methods
 
 - (void)stop{
     [self removeObjectsInHands];
 localT.v1 = orientation;
 time.d1 = medium;
 localT.v2 = orientation;
 time.d2 = medium;
 localT.h1 = CGAffineTransformIdentity;
 time.d3 = medium;
 localT.h2 = CGAffineTransformIdentity;
 time.d4 = medium;
 localT.b1 = CGAffineTransformIdentity;
 time.d5 = medium;
 localT.b2 = CGAffineTransformIdentity;
 time.d6 = medium;
 localT.lA1 = lArmTransform;
 time.d7 = medium;
 localT.lA2 = lArmTransform;
 time.d8 = medium;
 localT.rA1 = rArmTransform;
 time.d9 = medium;
 localT.rA2 = rArmTransform;
 time.d10 = medium;
 localT.lL1 = lLegTransform;
 time.d11 = medium;
 localT.lL2 = lLegTransform;
 time.d12 = medium;
 localT.rL1 = rLegTransform;
 time.d13 = medium;
 localT.rL2 = rLegTransform;
 time.d14 = medium;
 
 [self animateAndStop];
 }
 
 - (void)walk{
          [self removeObjectsInHands];
 localT.v1 = orientation;
 time.d1 = medium;
 localT.v2 = orientation;
 time.d2 = medium;
 localT.h1 = CGAffineTransformMake(1, 0, 0, 1, -1, 0);
 time.d3 = medium;
 localT.h2 = CGAffineTransformMake(1, 0, 0, 1, -1, 1);
 time.d4 = slowest;
 localT.b1 = CGAffineTransformMake(1, .1, 0, 1, 0, 0);
 time.d5 = medium;
 localT.b2 = CGAffineTransformMake(1, .1, 0, 1, 0, 1);
 time.d6 = slowest;
 localT.lA1 = CGAffineTransformMakeRotation(.3);
 time.d7 = medium;
 localT.lA2 = CGAffineTransformMakeRotation(.5);
 time.d8 = slower;
 localT.rA1 = CGAffineTransformMakeRotation(-.6);
 time.d9 = slowest;
 localT.rA2 = CGAffineTransformMakeRotation(-.3);
 time.d10 = slower;
 localT.lL1 = CGAffineTransformMakeRotation(-.2);
 time.d11 = slower;
 localT.lL2 = CGAffineTransformMakeRotation(.4);
 time.d12 = slower;
 localT.rL1 = CGAffineTransformMakeRotation(.2);
 time.d13 = slowest;
 localT.rL2 = CGAffineTransformMakeRotation(-.4);
 time.d14 = slower;
 
 [self animateAndContinue];
 }
 
 - (void)panic{
          [self removeObjectsInHands];
 localT.v1 = orientation;
 time.d1 = medium;
 localT.v2 = orientation;
 time.d2 = medium;
 localT.h1 = CGAffineTransformMakeTranslation(-1.5, 0);
 time.d3 = fast;
 localT.h2 = CGAffineTransformMakeTranslation(1.5, 0);
 time.d4 = fast;
 localT.b1 = CGAffineTransformMake(1, .1, -.1, 1, 0, 0);
 time.d5 = fast;
 localT.b2 = CGAffineTransformMake(1, -.1, .1, 1, 0, 0);
 time.d6 = fast;
 localT.lA1 = CGAffineTransformMakeRotation(1.5);
 time.d7 = faster;
 localT.lA2 = CGAffineTransformMakeRotation(2);
 time.d8 = faster;
 localT.rA1 = CGAffineTransformMakeRotation(-1.5);
 time.d9 = fast;
 localT.rA2 = CGAffineTransformMakeRotation(-2);
 time.d10 = fast;
 localT.lL1 = CGAffineTransformMakeRotation(-.7);
 time.d11 = fastest;
 localT.lL2 = CGAffineTransformMakeRotation(0);
 time.d12 = fast;
 localT.rL1 = CGAffineTransformMakeRotation(.7);
 time.d13 = fast;
 localT.rL2 = CGAffineTransformMakeRotation(0);
 time.d14 = faster;
 
 [self animateAndContinue];
 }
 - (void)run{
          [self removeObjectsInHands];
 localT.v1 = orientation;
 time.d1 = medium;
 localT.v2 = orientation;
 time.d2 = medium;
 localT.h1 = CGAffineTransformMake(1, 0, 0, 1, -2, 0);
 time.d3 = medium;
 localT.h2 = CGAffineTransformMake(1, 0, 0, 1, -2, 1);
 time.d4 = fast;
 localT.b1 = CGAffineTransformMake(1, .1, .1, 1, 0, 0);
 time.d5 = medium;
 localT.b2 = CGAffineTransformMake(1, .1, .1, 1, 0, 1);
 time.d6 = faster;
 localT.lA1 = CGAffineTransformMakeRotation(1.2);
 time.d7 = medium;
 localT.lA2 = CGAffineTransformMakeRotation(1.1);
 time.d8 = fast;
 localT.rA1 = CGAffineTransformMakeRotation(1.3);
 time.d9 = faster;
 localT.rA2 = CGAffineTransformMakeRotation(1.2);
 time.d10 = fast;
 localT.lL1 = CGAffineTransformMakeRotation(-.5);
 time.d11 = faster;
 localT.lL2 = CGAffineTransformMakeRotation(.5);
 time.d12 = fast;
 localT.rL1 = CGAffineTransformMakeRotation(.5);
 time.d13 = faster;
 localT.rL2 = CGAffineTransformMakeRotation(-.5);
 time.d14 = fast;
 
 [self animateAndContinue];
 }
 
 - (void)panicRun{
     [self removeObjectsInHands];
     localT.v1 = orientation;
     time.d1 = medium;
     localT.v2 = orientation;
     time.d2 = medium;
     localT.h1 = CGAffineTransformMake(1, 0, 0, 1, -2, 0);
     time.d3 = faster;
     localT.h2 = CGAffineTransformMake(1, 0, 0, 1, -2, 0);
     time.d4 = faster;
     localT.b1 = CGAffineTransformMake(1, .1, .1, 1, 0, 0);
     time.d5 = medium;
     localT.b2 = CGAffineTransformMake(1, .1, .1, 1, 0, 0);
     time.d6 = medium;
     localT.lA1 = CGAffineTransformMakeRotation(1.9);
     time.d7 = faster;
     localT.lA2 = CGAffineTransformMakeRotation(.5);
     time.d8 = faster;
     localT.rA1 = CGAffineTransformMakeRotation(-2);
     time.d9 = fast;
     localT.rA2 = CGAffineTransformMakeRotation(-.5);
     time.d10 = fast;
     localT.lL1 = CGAffineTransformMakeRotation(-.5);
     time.d11 = fast;
     localT.lL2 = CGAffineTransformMakeRotation(.5);
     time.d12 = fast;
     localT.rL1 = CGAffineTransformMakeRotation(.5);
     time.d13 = fast;
     localT.rL2 = CGAffineTransformMakeRotation(-.5);
     time.d14 = fast;
     
     [self animateAndContinue];
 }
 
 - (void)fall{
          [self removeObjectsInHands];
 localT.v1 = orientation;
 time.d1 = medium;
 localT.v2 = orientation;
 time.d2 = medium;
 localT.h1 = CGAffineTransformIdentity;
 time.d3 = medium;
 localT.h2 = CGAffineTransformIdentity;
 time.d4 = medium;
 localT.b1 = CGAffineTransformIdentity;
 time.d5 = slow;
 localT.b2 = CGAffineTransformIdentity;
 time.d6 = slowest;
 localT.lA1 = CGAffineTransformMakeRotation(2.5);
 time.d7 = slowest;
 localT.lA2 = CGAffineTransformMakeRotation(2.4);
 time.d8 = slowest;
 localT.rA1 = CGAffineTransformMakeRotation(-2.5);
 time.d9 = slower;
 localT.rA2 = CGAffineTransformMakeRotation(-2.4);
 time.d10 = slower;
 localT.lL1 = CGAffineTransformMakeRotation(-.4);
 time.d11 = slowest;
 localT.lL2 = CGAffineTransformMakeRotation(-.2);
 time.d12 = slower;
 localT.rL1 = CGAffineTransformMakeRotation(.4);
 time.d13 = slow;
 localT.rL2 = CGAffineTransformMakeRotation(.2);
 time.d14 = slowest;
 
 [self animateAndContinue];
 
 }
 - (void)recover{
          [self removeObjectsInHands];
 localT.v1 = orientation;
 time.d1 = medium;
 localT.v2 = orientation;
 time.d2 = medium;
 localT.h1 = CGAffineTransformMake(1, 0, 0, 1, -3, 10);
 time.d3 = fastest;
 localT.h2 = CGAffineTransformIdentity;
 time.d4 = slower;
 localT.b1 = CGAffineTransformMake(1, -.2, .2, 1, 0, 10);
 time.d5 = fastest;
 localT.b2 = CGAffineTransformIdentity;
 time.d6 = slow;
 localT.lA1 = CGAffineTransformConcat(CGAffineTransformMakeRotation(.5), CGAffineTransformMakeTranslation(0, 10));
 time.d7 = fastest;
 localT.lA2 = lArmTransform;
 time.d8 = slowest;
 localT.rA1 = CGAffineTransformConcat(CGAffineTransformMakeRotation(.5), CGAffineTransformMakeTranslation(0, 10));
 time.d9 = fastest;
 localT.rA2 = rArmTransform;
 time.d10 = slowest;
 localT.lL1 = CGAffineTransformConcat(CGAffineTransformMakeRotation(1.57), CGAffineTransformMakeTranslation(3, 12));
 time.d11 = fastest;
 localT.lL2 = lLegTransform;
 time.d12 = slow;
 localT.rL1 = CGAffineTransformConcat(CGAffineTransformMakeRotation(1.57), CGAffineTransformMakeTranslation(3, 12));
 time.d13 = fastest;
 localT.rL2 = rLegTransform;
 time.d14 = slow;
 
 [self animateAndStopSoon];
 
 }
  
 #pragma mark - Utility Methods
 
 -(void)changeOrientation{
 orientation = CGAffineTransformMake(1 * facing.intValue, 0, 0, 1, 0, 0);
 self.view.transform = orientation;
 }
 
 
 - (void)pause{
 CFTimeInterval pausedTime = [self.view.layer convertTime:CACurrentMediaTime() fromLayer:nil];
 self.view.layer.speed = 0.0;
 self.view.layer.timeOffset = pausedTime;
 }
 
 - (void)resume{
 CFTimeInterval pausedTime = [self.view.layer timeOffset];
 self.view.layer.speed = 1.0;
 self.view.layer.timeOffset = 0.0;
 self.view.layer.beginTime = 0.0;
 CFTimeInterval timeSincePause = [self.view.layer convertTime:CACurrentMediaTime() fromLayer:nil] - pausedTime;
 self.view.layer.beginTime = timeSincePause;
 }

- (void)removeObjectsInHands{
    for (UIView *v in lHand.subviews) {
        v.alpha = 0;
    }
    for (UIView *v in rHand.subviews) {
        v.alpha = 0;
    }
}

- (void)resetAllTransforms{
 localT.v1 = orientation;
 time.d1 = medium;
 localT.v2 = orientation;
 time.d2 = medium;
 localT.h1 = CGAffineTransformIdentity;
 time.d3 = medium;
 localT.h2 = CGAffineTransformIdentity;
 time.d4 = medium;
 localT.b1 = CGAffineTransformIdentity;
 time.d5 = medium;
 localT.b2 = CGAffineTransformIdentity;
 time.d6 = medium;
 localT.lA1 = lArmTransform;
 time.d7 = medium;
 localT.lA2 = lArmTransform;
 time.d8 = medium;
 localT.rA1 = rArmTransform;
 time.d9 = medium;
 localT.rA2 = rArmTransform;
 time.d10 = medium;
 localT.lL1 = lLegTransform;
 time.d11 = medium;
 localT.lL2 = lLegTransform;
 time.d12 = medium;
 localT.rL1 = rLegTransform;
 time.d13 = medium;
 localT.rL2 = rLegTransform;
 time.d14 = medium;
 }

#pragma mark - AI methods

- (void)updateCurrentState{
    switch (currentState) {
        case passive:
            [self passive];
            break;
            
        case alerted:
            [self alerted];
            break;
            
        case scared:
            [self scared];
            break;
            
        case angry:
            [self angry];
            break;
            
        case abducting:
            [self abducting];
            break;
            
        case falling:
            [self falling];
            break;
            
        case abducted:
            [self abducted];
            break;
            
        case attacking:
            //[self attacking];
            break;
            
        default:
            break;
    }
}

- (void)passive{

}

- (void)alerted{
    //this is set up this way to kill the passive loop without glitches
    [self stop];
    self.currentState = abducting;
}

- (void)scared{
    
}

- (void)angry{
    
}

- (void)abducting{
   
}

- (void)falling{
    
}

- (void)abducted{
    
}

- (void)attacking{
    
}

- (void)backToPassive{
    self.currentState = passive;
    [self updateCurrentState];
}
 
 #pragma mark - Animation methods
 
 - (void)animateAndStop{
 
 [UIView animateWithDuration:time.d1 delay:0 options:UIViewAnimationOptionBeginFromCurrentState animations:^{
 self.view.transform = localT.v1;
 } completion:^(BOOL finished) {}];
 
 [UIView animateWithDuration:time.d2 delay:0 options:UIViewAnimationOptionBeginFromCurrentState animations:^{
 head.transform = localT.h1;
 } completion:^(BOOL finished) {}];
 
 [UIView animateWithDuration:time.d3 delay:0 options:UIViewAnimationOptionBeginFromCurrentState animations:^{
 body.transform = localT.b1;
 } completion:^(BOOL finished) {}];
 
 [UIView animateWithDuration:time.d4 delay:0 options:UIViewAnimationOptionBeginFromCurrentState animations:^{
 lArm.transform = localT.lA1;
 } completion:^(BOOL finished) {}];
 
 [UIView animateWithDuration:time.d5 delay:0 options:UIViewAnimationOptionBeginFromCurrentState animations:^{
 rArm.transform = localT.rA1;
 } completion:^(BOOL finished) {}];
 
 [UIView animateWithDuration:time.d6 delay:0 options:UIViewAnimationOptionBeginFromCurrentState animations:^{
 lLeg.transform = localT.lL1;
 } completion:^(BOOL finished) {}];
 
 [UIView animateWithDuration:time.d7 delay:0 options:UIViewAnimationOptionBeginFromCurrentState animations:^{
 rLeg.transform = localT.rL1;
 } completion:^(BOOL finished) {}];
 
 }
 
 - (void)animateAndContinue{
 
 [UIView animateWithDuration:time.d1 delay:0 options:UIViewAnimationOptionBeginFromCurrentState animations:^{
 self.view.transform = localT.v1;
 }completion:^(BOOL finished) {
 [UIView animateWithDuration:time.d2 delay:0 options:UIViewAnimationOptionCurveLinear | UIViewAnimationOptionAutoreverse | UIViewAnimationOptionRepeat | UIViewAnimationOptionBeginFromCurrentState animations:^{
 self.view.transform =localT.v2;
 } completion:^(BOOL finished) {}];}];
 
 [UIView animateWithDuration:time.d3 delay:0 options:UIViewAnimationOptionBeginFromCurrentState animations:^{
 head.transform = localT.h1;
 }completion:^(BOOL finished) {
 [UIView animateWithDuration:time.d4 delay:0 options:UIViewAnimationOptionCurveLinear | UIViewAnimationOptionAutoreverse | UIViewAnimationOptionRepeat | UIViewAnimationOptionBeginFromCurrentState animations:^{
 head.transform =localT.h2;
 } completion:^(BOOL finished) {}];}];
 
 [UIView animateWithDuration:time.d5 delay:0 options:UIViewAnimationOptionBeginFromCurrentState animations:^{
 body.transform = localT.b1;
 }completion:^(BOOL finished) {
 [UIView animateWithDuration:time.d6 delay:0 options:UIViewAnimationOptionCurveLinear | UIViewAnimationOptionAutoreverse | UIViewAnimationOptionRepeat | UIViewAnimationOptionBeginFromCurrentState animations:^{
 body.transform =localT.b2;
 } completion:^(BOOL finished) {}];}];
 
 [UIView animateWithDuration:time.d7 delay:0 options:UIViewAnimationOptionBeginFromCurrentState animations:^{
 lArm.transform = localT.lA1;
 }completion:^(BOOL finished) {
 [UIView animateWithDuration:time.d8 delay:0 options:UIViewAnimationOptionCurveLinear | UIViewAnimationOptionAutoreverse | UIViewAnimationOptionRepeat | UIViewAnimationOptionBeginFromCurrentState animations:^{
 lArm.transform =localT.lA2;
 } completion:^(BOOL finished) {}];}];
 
 [UIView animateWithDuration:time.d9 delay:0 options:UIViewAnimationOptionBeginFromCurrentState animations:^{
 rArm.transform = localT.rA1;
 }completion:^(BOOL finished) {
 [UIView animateWithDuration:time.d10 delay:0 options:UIViewAnimationOptionCurveLinear | UIViewAnimationOptionAutoreverse | UIViewAnimationOptionRepeat | UIViewAnimationOptionBeginFromCurrentState animations:^{
 rArm.transform =localT.rA2;
 } completion:^(BOOL finished) {}];}];
 
 [UIView animateWithDuration:time.d11 delay:0 options:UIViewAnimationOptionBeginFromCurrentState animations:^{
 lLeg.transform = localT.lL1;
 }completion:^(BOOL finished) {
 [UIView animateWithDuration:time.d12 delay:0 options:UIViewAnimationOptionCurveLinear | UIViewAnimationOptionAutoreverse | UIViewAnimationOptionRepeat | UIViewAnimationOptionBeginFromCurrentState animations:^{
 lLeg.transform =localT.lL2;
 } completion:^(BOOL finished) {}];}];
 
 [UIView animateWithDuration:time.d13 delay:0 options:UIViewAnimationOptionBeginFromCurrentState animations:^{
 rLeg.transform = localT.rL1;
 }completion:^(BOOL finished) {
 [UIView animateWithDuration:time.d14 delay:0 options:UIViewAnimationOptionCurveLinear | UIViewAnimationOptionAutoreverse | UIViewAnimationOptionRepeat |UIViewAnimationOptionBeginFromCurrentState animations:^{
 rLeg.transform =localT.rL2;
 } completion:^(BOOL finished) {}];}];
 
 }
 
 - (void)animateAndStopSoon{
 
 [UIView animateWithDuration:time.d1 delay:0 options:UIViewAnimationOptionBeginFromCurrentState animations:^{
 self.view.transform = localT.v1;
 }completion:^(BOOL finished) {
 [UIView animateWithDuration:time.d2 delay:0 options:UIViewAnimationOptionCurveLinear | UIViewAnimationOptionBeginFromCurrentState animations:^{
 self.view.transform =localT.v2;
 } completion:^(BOOL finished) {}];}];
 
 [UIView animateWithDuration:time.d3 delay:0 options:UIViewAnimationOptionBeginFromCurrentState animations:^{
 head.transform = localT.h1;
 }completion:^(BOOL finished) {
 [UIView animateWithDuration:time.d4 delay:0 options:UIViewAnimationOptionCurveLinear | UIViewAnimationOptionBeginFromCurrentState animations:^{
 head.transform =localT.h2;
 } completion:^(BOOL finished) {}];}];
 
 [UIView animateWithDuration:time.d5 delay:0 options:UIViewAnimationOptionBeginFromCurrentState animations:^{
 body.transform = localT.b1;
 }completion:^(BOOL finished) {
 [UIView animateWithDuration:time.d6 delay:0 options:UIViewAnimationOptionCurveLinear | UIViewAnimationOptionBeginFromCurrentState animations:^{
 body.transform =localT.b2;
 } completion:^(BOOL finished) {}];}];
 
 [UIView animateWithDuration:time.d7 delay:0 options:UIViewAnimationOptionBeginFromCurrentState animations:^{
 lArm.transform = localT.lA1;
 }completion:^(BOOL finished) {
 [UIView animateWithDuration:time.d8 delay:0 options:UIViewAnimationOptionCurveLinear| UIViewAnimationOptionBeginFromCurrentState animations:^{
 lArm.transform =localT.lA2;
 } completion:^(BOOL finished) {}];}];
 
 [UIView animateWithDuration:time.d9 delay:0 options:UIViewAnimationOptionBeginFromCurrentState animations:^{
 rArm.transform = localT.rA1;
 }completion:^(BOOL finished) {
 [UIView animateWithDuration:time.d10 delay:0 options:UIViewAnimationOptionCurveLinear | UIViewAnimationOptionBeginFromCurrentState animations:^{
 rArm.transform =localT.rA2;
 } completion:^(BOOL finished) {}];}];
 
 [UIView animateWithDuration:time.d11 delay:0 options:UIViewAnimationOptionBeginFromCurrentState animations:^{
 lLeg.transform = localT.lL1;
 }completion:^(BOOL finished) {
 [UIView animateWithDuration:time.d12 delay:0 options:UIViewAnimationOptionCurveLinear | UIViewAnimationOptionBeginFromCurrentState animations:^{
 lLeg.transform =localT.lL2;
 } completion:^(BOOL finished) {}];}];
 
 [UIView animateWithDuration:time.d13 delay:0 options:UIViewAnimationOptionBeginFromCurrentState animations:^{
 rLeg.transform = localT.rL1;
 }completion:^(BOOL finished) {
 [UIView animateWithDuration:time.d14 delay:0 options:UIViewAnimationOptionCurveLinear | UIViewAnimationOptionBeginFromCurrentState animations:^{
 rLeg.transform =localT.rL2;
 } completion:^(BOOL finished) {}];}];
 
 }


@end
