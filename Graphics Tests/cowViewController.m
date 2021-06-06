//
//  cowViewController.m
//  Graphics Tests
//
//  Created by DM on 3/2/13.
//  Copyright (c) 2013 DM. All rights reserved.
//

#import "cowViewController.h"

@implementation cowViewController
@synthesize facing, currentState, tag, moveDuration;

- (void)viewDidLoad
{
    facing = [NSNumber numberWithInt:1];
    
    self.view.frame = CGRectMake(0, 0, 65, 55);
    self.view.bounds = CGRectMake(0, 0, 65, 55);
    self.view.backgroundColor = [UIColor clearColor];
    body = [[cowBodyView alloc]initWithFrame:CGRectMake(7, 7, 60, 35)];
    body.clipsToBounds = NO;
    self.view.clipsToBounds = NO;
    cowHeadView *headLines = [[cowHeadView alloc]initWithFrame:CGRectMake(0, 0, 20, 27)];
    head = [[cowHeadView2 alloc]initWithFrame:CGRectMake(-8, -18, 20, 27)];
    head.layer.anchorPoint = CGPointMake(.5, 0);
    
    lFLeg = [[legView alloc]initWithFrame:CGRectMake(15, 18, 6, 21)];
    lFLeg.layer.anchorPoint = CGPointMake(.5, 0);
    rFLeg = [[legView alloc]initWithFrame:CGRectMake(22, 18, 6, 21)];
    rFLeg.layer.anchorPoint = CGPointMake(.5, 0);
    lBLeg = [[legView alloc]initWithFrame:CGRectMake(35, 18, 6, 21)];
    lBLeg.layer.anchorPoint = CGPointMake(.5, 0);
    rBLeg = [[legView alloc]initWithFrame:CGRectMake(42, 18, 6, 21)];
    rBLeg.layer.anchorPoint = CGPointMake(.5, 0);
    
    [self.view addSubview:body];
    [body addSubview:head];
    [body addSubview:lFLeg];
    [body addSubview:rFLeg];
    [body addSubview:lBLeg];
    [body addSubview:rBLeg];
    [head addSubview:headLines];
    
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

    localT.v1 = orientation;
    time.d2 = medium;
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
    localT.lA1 = CGAffineTransformIdentity;
    time.d7 = medium;
    localT.lA2 = CGAffineTransformIdentity;
    time.d8 = medium;
    localT.rA1 = CGAffineTransformIdentity;
    time.d9 = medium;
    localT.rA2 = CGAffineTransformIdentity;
    time.d10 = medium;
    localT.lL1 = CGAffineTransformIdentity;
    time.d11 = medium;
    localT.lL2 = CGAffineTransformIdentity;
    time.d12 = medium;
    localT.rL1 = CGAffineTransformIdentity;
    time.d13 = medium;
    localT.rL2 = CGAffineTransformIdentity;
    time.d14 = medium;
    
    [self animateAndStop];
}

- (void)walk{
    localT.v1 = orientation;
    time.d2 = medium;
    localT.v2 = orientation;
    time.d2 = medium;
    localT.h1 = CGAffineTransformIdentity;
    time.d3 = medium;
    localT.h2 = CGAffineTransformIdentity;
    time.d4 = medium;
    localT.b1 = CGAffineTransformIdentity;
    time.d5 = medium;
    localT.b2 = CGAffineTransformMakeTranslation(0, 1);
    time.d6 = slowest;
    localT.lA1 = CGAffineTransformMakeRotation(.2);
    time.d7 = medium;
    localT.lA2 = CGAffineTransformMakeRotation(-.2);
    time.d8 = slower;
    localT.rA1 = CGAffineTransformMakeRotation(-.3);
    time.d9 = slowest;
    localT.rA2 = CGAffineTransformMakeRotation(.3);
    time.d10 = slower;
    localT.lL1 = CGAffineTransformMakeRotation(.2);
    time.d11 = slower;
    localT.lL2 = CGAffineTransformMakeRotation(-.2);
    time.d12 = slower;
    localT.rL1 = CGAffineTransformMakeRotation(-.3);
    time.d13 = slowest;
    localT.rL2 = CGAffineTransformMakeRotation(.3);
    time.d14 = slower;
    
    [self animateAndContinue];
}

- (void)panic{
    localT.v1 = orientation;
    time.d1 = medium;
    localT.v2 = orientation;
    time.d2 = medium;
    localT.h1 = CGAffineTransformMakeRotation(.2);
    time.d3 = faster;
    localT.h2 = CGAffineTransformMakeRotation(-.2);
    time.d4 = faster;
    localT.b1 = CGAffineTransformMakeRotation(-.1);
    time.d5 = medium;
    localT.b2 = CGAffineTransformMakeRotation(.1);
    time.d6 = medium;
    localT.lA1 = CGAffineTransformIdentity;
    time.d7 = faster;
    localT.lA2 = CGAffineTransformMakeRotation(.5);
    time.d8 = faster;
    localT.rA1 = CGAffineTransformIdentity;
    time.d9 = fast;
    localT.rA2 = CGAffineTransformMakeRotation(-.5);
    time.d10 = fast;
    localT.lL1 = CGAffineTransformIdentity;
    time.d11 = fastest;
    localT.lL2 = CGAffineTransformMakeRotation(.5);
    time.d12 = fast;
    localT.rL1 = CGAffineTransformIdentity;
    time.d13 = fast;
    localT.rL2 = CGAffineTransformMakeRotation(-.5);
    time.d14 = faster;
    
    [self animateAndContinue];
}
- (void)run{
    localT.v1 = orientation;
    time.d2 = medium;
    localT.v2 = orientation;
    time.d2 = medium;
    localT.h1 = CGAffineTransformIdentity;
    time.d3 = medium;
    localT.h2 = CGAffineTransformMakeTranslation(0, 1.5);
    time.d4 = fast;
    localT.b1 = CGAffineTransformIdentity;
    time.d5 = medium;
    localT.b2 = CGAffineTransformConcat(CGAffineTransformMakeRotation(-.1), CGAffineTransformMakeTranslation(0, 2));
    time.d6 = faster;
    localT.lA1 = CGAffineTransformMakeRotation(.3);
    time.d7 = medium;
    localT.lA2 = CGAffineTransformMakeRotation(-.3);
    time.d8 = fast;
    localT.rA1 = CGAffineTransformMakeRotation(-.4);
    time.d9 = faster;
    localT.rA2 = CGAffineTransformMakeRotation(.4);
    time.d10 = fast;
    localT.lL1 = CGAffineTransformMakeRotation(.3);
    time.d11 = faster;
    localT.lL2 = CGAffineTransformMakeRotation(-.3);
    time.d12 = fast;
    localT.rL1 = CGAffineTransformMakeRotation(.4);
    time.d13 = faster;
    localT.rL2 = CGAffineTransformMakeRotation(-.4);
    time.d14 = fast;
    
    [self animateAndContinue];
}

- (void)charge{

    localT.v1 = orientation;
    time.d2 = medium;
    localT.v2 = orientation;
    time.d2 = medium;
    localT.h1 = CGAffineTransformMakeTranslation(-1, 5);
    time.d3 = medium;
    localT.h2 = CGAffineTransformMakeTranslation(-1, 6);
    time.d4 = fast;
    localT.b1 = CGAffineTransformIdentity;
    time.d5 = medium;
    localT.b2 = CGAffineTransformConcat(CGAffineTransformMakeRotation(-.15), CGAffineTransformMakeTranslation(0, 3));
    time.d6 = faster;
    localT.lA1 = CGAffineTransformMakeRotation(.4);
    time.d7 = fast;
    localT.lA2 = CGAffineTransformMakeRotation(-.4);
    time.d8 = faster;
    localT.rA1 = CGAffineTransformMakeRotation(-.5);
    time.d9 = fastest;
    localT.rA2 = CGAffineTransformMakeRotation(.5);
    time.d10 = faster;
    localT.lL1 = CGAffineTransformMakeRotation(.4);
    time.d11 = fastest;
    localT.lL2 = CGAffineTransformMakeRotation(-.4);
    time.d12 = faster;
    localT.rL1 = CGAffineTransformMakeRotation(.5);
    time.d13 = fastest;
    localT.rL2 = CGAffineTransformMakeRotation(-.5);
    time.d14 = faster;
    
    [self animateAndContinue];
}

- (void)fall{
    localT.v1 = orientation;
    time.d1 = medium;
    localT.v2 = orientation;
    time.d2 = medium;
    localT.h1 = CGAffineTransformIdentity;
    time.d3 = medium;
    localT.h2 = CGAffineTransformIdentity;
    time.d4 = medium;
    localT.b1 = CGAffineTransformMakeRotation(-.05);
    time.d5 = slow;
    localT.b2 = CGAffineTransformMakeRotation(.05);
    time.d6 = slowest;
    localT.lA1 = CGAffineTransformMakeRotation(.9);
    time.d7 = slowest;
    localT.lA2 = CGAffineTransformMakeRotation(1.1);
    time.d8 = slowest;
    localT.rA1 = CGAffineTransformMakeRotation(.8);
    time.d9 = slower;
    localT.rA2 = CGAffineTransformMakeRotation(.7);
    time.d10 = slower;
    localT.lL1 = CGAffineTransformMakeRotation(.4);
    time.d11 = slowest;
    localT.lL2 = CGAffineTransformMakeRotation(.3);
    time.d12 = slower;
    localT.rL1 = CGAffineTransformMakeRotation(.2);
    time.d13 = slow;
    localT.rL2 = CGAffineTransformMakeRotation(.1);
    time.d14 = slowest;
    
    [self animateAndContinue];

}
- (void)recover{
    localT.v1 = orientation;
    time.d2 = medium;
    localT.v2 = orientation;
    time.d2 = medium;
    localT.h1 = CGAffineTransformConcat(CGAffineTransformMakeRotation(-.1), CGAffineTransformMakeTranslation(0, 6));
    time.d3 = fast;
    localT.h2 = CGAffineTransformIdentity;
    time.d4 = slower;
    localT.b1 = CGAffineTransformConcat(CGAffineTransformMakeRotation(.1), CGAffineTransformMakeTranslation(0, 7));
    time.d5 = fastest;
    localT.b2 = CGAffineTransformIdentity;
    time.d6 = slow;
    localT.lA1 = CGAffineTransformMakeRotation(1.57);
    time.d7 = fastest;
    localT.lA2 = CGAffineTransformIdentity;
    time.d8 = slowest;
    localT.rA1 = CGAffineTransformMakeRotation(1.57);
    time.d9 = fastest;
    localT.rA2 = CGAffineTransformIdentity;
    time.d10 = slowest;
    localT.lL1 = CGAffineTransformMakeRotation(1.57);
    time.d11 = fastest;
    localT.lL2 = CGAffineTransformIdentity;
    time.d12 = slow;
    localT.rL1 = CGAffineTransformMakeRotation(1.57);
    time.d13 = fastest;
    localT.rL2 = CGAffineTransformIdentity;
    time.d14 = slow;
    
    [self animateAndStopSoon];

}

- (void)flair1{
    localT.v1 = orientation;
    time.d2 = slowest;
    localT.v2 = orientation;
    time.d2 = slowest;
    localT.h1 = CGAffineTransformMakeRotation(.1);
    time.d3 = slowest;
    localT.h2 = CGAffineTransformMakeRotation(-.1);
    time.d4 = fast;
    localT.b1 = CGAffineTransformIdentity;
    time.d5 = slowest;
    localT.b2 = CGAffineTransformIdentity;
    time.d6 = slowest;
    localT.lA1 = CGAffineTransformIdentity;
    time.d7 = slowest;
    localT.lA2 = CGAffineTransformIdentity;
    time.d8 = slowest;
    localT.rA1 = CGAffineTransformIdentity;
    time.d9 = slowest;
    localT.rA2 = CGAffineTransformIdentity;
    time.d10 = slowest;
    localT.lL1 = CGAffineTransformIdentity;
    time.d11 = slowest;
    localT.lL2 = CGAffineTransformIdentity;
    time.d12 = slowest;
    localT.rL1 = CGAffineTransformIdentity;
    time.d13 = slowest;
    localT.rL2 = CGAffineTransformIdentity;
    time.d14 = slowest;
    
    [self animateAndContinue];
    
}

- (void)flair2{
    localT.v1 = orientation;
    time.d2 = slower;
    localT.v2 = orientation;
    time.d2 = slower;
    localT.h1 = CGAffineTransformConcat(CGAffineTransformMakeRotation(.2), CGAffineTransformMakeTranslation(0, 12));
    time.d3 = slower;
    localT.h2 = CGAffineTransformConcat(CGAffineTransformMakeRotation(.3), CGAffineTransformMakeTranslation(0, 12));
    time.d4 = slowest;
    localT.b1 = CGAffineTransformMakeRotation(-.2);
    time.d5 = slower;
    localT.b2 = CGAffineTransformMakeRotation(-.2);
    time.d6 = slower;
    localT.lA1 = CGAffineTransformConcat(CGAffineTransformMakeRotation(.8), CGAffineTransformMakeTranslation(0, -1));
    time.d7 = slower;
    localT.lA2 = CGAffineTransformConcat(CGAffineTransformMakeRotation(.8), CGAffineTransformMakeTranslation(0, -1));
    time.d8 = slower;
    localT.rA1 = CGAffineTransformMakeRotation(-.4);
    time.d9 = slower;
    localT.rA2 = CGAffineTransformMakeRotation(-.4);
    time.d10 = slower;
    localT.lL1 = CGAffineTransformMakeRotation(.2);
    time.d11 = slower;
    localT.lL2 = CGAffineTransformMakeRotation(.2);
    time.d12 = slower;
    localT.rL1 = CGAffineTransformConcat(CGAffineTransformMakeRotation(.2), CGAffineTransformMakeTranslation(0, 1));
    time.d13 = slower;
    localT.rL2 = CGAffineTransformConcat(CGAffineTransformMakeRotation(.2), CGAffineTransformMakeTranslation(0, 1));
    time.d14 = slower;
    
    [self animateAndContinue];
}

- (void)flair3{
    localT.v1 = orientation;
    time.d2 = medium;
    localT.v2 = orientation;
    time.d2 = medium;
    localT.h1 = CGAffineTransformConcat(CGAffineTransformMakeRotation(-.2), CGAffineTransformMakeTranslation(0, 5));
    time.d3 = medium;
    localT.h2 = CGAffineTransformIdentity;
    time.d4 = medium;
    localT.b1 = CGAffineTransformIdentity;
    time.d5 = medium;
    localT.b2 = CGAffineTransformIdentity;
    time.d6 = medium;
    localT.lA1 = CGAffineTransformMakeRotation(-.3);
    time.d7 = faster;
    localT.lA2 = CGAffineTransformIdentity;
    time.d8 = medium;
    localT.rA1 = CGAffineTransformIdentity;
    time.d9 = medium;
    localT.rA2 = CGAffineTransformIdentity;
    time.d10 = medium;
    localT.lL1 = CGAffineTransformIdentity;
    time.d11 = medium;
    localT.lL2 = CGAffineTransformIdentity;
    time.d12 = medium;
    localT.rL1 = CGAffineTransformIdentity;
    time.d13 = medium;
    localT.rL2 = CGAffineTransformIdentity;
    time.d14 = medium;
    
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
    localT.lA1 = CGAffineTransformIdentity;
    time.d7 = medium;
    localT.lA2 = CGAffineTransformIdentity;
    time.d8 = medium;
    localT.rA1 = CGAffineTransformIdentity;
    time.d9 = medium;
    localT.rA2 = CGAffineTransformIdentity;
    time.d10 = medium;
    localT.lL1 = CGAffineTransformIdentity;
    time.d11 = medium;
    localT.lL2 = CGAffineTransformIdentity;
    time.d12 = medium;
    localT.rL1 = CGAffineTransformIdentity;
    time.d13 = medium;
    localT.rL2 = CGAffineTransformIdentity;
    time.d14 = medium;
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
        lFLeg.transform = localT.lA1;
    } completion:^(BOOL finished) {}];
    
    [UIView animateWithDuration:time.d5 delay:0 options:UIViewAnimationOptionBeginFromCurrentState animations:^{
        rFLeg.transform = localT.rA1;
    } completion:^(BOOL finished) {}];
    
    [UIView animateWithDuration:time.d6 delay:0 options:UIViewAnimationOptionBeginFromCurrentState animations:^{
        lBLeg.transform = localT.lL1;
    } completion:^(BOOL finished) {}];
    
    [UIView animateWithDuration:time.d7 delay:0 options:UIViewAnimationOptionBeginFromCurrentState animations:^{
        rBLeg.transform = localT.rL1;
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
        lFLeg.transform = localT.lA1;
    }completion:^(BOOL finished) {
        [UIView animateWithDuration:time.d8 delay:0 options:UIViewAnimationOptionCurveLinear | UIViewAnimationOptionAutoreverse | UIViewAnimationOptionRepeat | UIViewAnimationOptionBeginFromCurrentState animations:^{
            lFLeg.transform =localT.lA2;
        } completion:^(BOOL finished) {}];}];
    
     [UIView animateWithDuration:time.d9 delay:0 options:UIViewAnimationOptionBeginFromCurrentState animations:^{
        rFLeg.transform = localT.rA1;
    }completion:^(BOOL finished) {
        [UIView animateWithDuration:time.d10 delay:0 options:UIViewAnimationOptionCurveLinear | UIViewAnimationOptionAutoreverse | UIViewAnimationOptionRepeat | UIViewAnimationOptionBeginFromCurrentState animations:^{
            rFLeg.transform =localT.rA2;
        } completion:^(BOOL finished) {}];}];
    
     [UIView animateWithDuration:time.d11 delay:0 options:UIViewAnimationOptionBeginFromCurrentState animations:^{
        lBLeg.transform = localT.lL1;
    }completion:^(BOOL finished) {
        [UIView animateWithDuration:time.d12 delay:0 options:UIViewAnimationOptionCurveLinear | UIViewAnimationOptionAutoreverse | UIViewAnimationOptionRepeat | UIViewAnimationOptionBeginFromCurrentState animations:^{
            lBLeg.transform =localT.lL2;
        } completion:^(BOOL finished) {}];}];
    
     [UIView animateWithDuration:time.d13 delay:0 options:UIViewAnimationOptionBeginFromCurrentState animations:^{
        rBLeg.transform = localT.rL1;
    }completion:^(BOOL finished) {
        [UIView animateWithDuration:time.d14 delay:0 options:UIViewAnimationOptionCurveLinear | UIViewAnimationOptionAutoreverse | UIViewAnimationOptionRepeat |UIViewAnimationOptionBeginFromCurrentState animations:^{
            rBLeg.transform =localT.rL2;
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
        lFLeg.transform = localT.lA1;
    }completion:^(BOOL finished) {
        [UIView animateWithDuration:time.d8 delay:0 options:UIViewAnimationOptionCurveLinear| UIViewAnimationOptionBeginFromCurrentState animations:^{
            lFLeg.transform =localT.lA2;
        } completion:^(BOOL finished) {}];}];
    
    [UIView animateWithDuration:time.d9 delay:0 options:UIViewAnimationOptionBeginFromCurrentState animations:^{
        rFLeg.transform = localT.rA1;
    }completion:^(BOOL finished) {
        [UIView animateWithDuration:time.d10 delay:0 options:UIViewAnimationOptionCurveLinear | UIViewAnimationOptionBeginFromCurrentState animations:^{
            rFLeg.transform =localT.rA2;
        } completion:^(BOOL finished) {}];}];
    
    [UIView animateWithDuration:time.d11 delay:0 options:UIViewAnimationOptionBeginFromCurrentState animations:^{
        lBLeg.transform = localT.lL1;
    }completion:^(BOOL finished) {
        [UIView animateWithDuration:time.d12 delay:0 options:UIViewAnimationOptionCurveLinear | UIViewAnimationOptionBeginFromCurrentState animations:^{
            lBLeg.transform =localT.lL2;
        } completion:^(BOOL finished) {}];}];
    
    [UIView animateWithDuration:time.d13 delay:0 options:UIViewAnimationOptionBeginFromCurrentState animations:^{
        rBLeg.transform = localT.rL1;
    }completion:^(BOOL finished) {
        [UIView animateWithDuration:time.d14 delay:0 options:UIViewAnimationOptionCurveLinear | UIViewAnimationOptionBeginFromCurrentState animations:^{
            rBLeg.transform =localT.rL2;
        } completion:^(BOOL finished) {}];}];
    
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
            [self attacking];
            break;
            
        default:
            break;
    }
}

- (void)passive{
    
    srand(rand());
    
    uint duration = 1 + rand() % 5;
    uint type = 1 + rand() % 4;
    moveDuration = [NSNumber numberWithUnsignedInt:duration + 3];
    NSDictionary *dictionary = [[NSDictionary alloc] initWithObjectsAndKeys:moveDuration,@"k1",tag,@"k2",facing,@"k3", nil];
    
    switch (type) {
        case 1:
            facing = [NSNumber numberWithInt:facing.intValue * -1];
            orientation = CGAffineTransformMake(1 * facing.intValue, 0, 0, 1, 0, 0);
            [self walk];
            [[NSNotificationCenter defaultCenter] postNotificationName:@"isWalking" object:self userInfo:dictionary];
            [self performSelector:@selector(updateCurrentState) withObject:nil afterDelay:moveDuration.unsignedIntValue];
            break;
            
        case 2:
            [self flair2];
            [self performSelector:@selector(updateCurrentState) withObject:nil afterDelay:duration];
            break;
            
        case 3:
            [self flair1];
            [self performSelector:@selector(updateCurrentState) withObject:nil afterDelay:duration];
            break;
            
        case 4:
            [self flair3];
            duration -= 1;
            [self performSelector:@selector(updateCurrentState) withObject:nil afterDelay:duration];
            break;
            
        default:
            break;
    }
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
    NSDictionary *dictionary = [[NSDictionary alloc] initWithObjectsAndKeys:tag,@"k1",nil];
    [[NSNotificationCenter defaultCenter] postNotificationName:@"isAbducting" object:self userInfo:dictionary];
}

- (void)falling{
 
}

- (void)abducted{
    //deconstructor method
    [head removeFromSuperview];
    head = nil;
    [body removeFromSuperview];
    body = nil;
    [lFLeg removeFromSuperview];
    lFLeg = nil;
    [rFLeg removeFromSuperview];
    rFLeg = nil;
    [lBLeg removeFromSuperview];
    lBLeg = nil;
    [rBLeg removeFromSuperview];
    rBLeg = nil;
    
    tag = nil;
    facing = nil;
    moveDuration = nil;
    self.view = nil;
}

- (void)attacking{
    
}

@end
