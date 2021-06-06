//
//  detectiveViewController.m
//  Graphics Tests
//
//  Created by DM on 10/5/13.
//  Copyright (c) 2013 DM. All rights reserved.
//

#import "detectiveViewController.h"

@interface detectiveViewController ()

@end

@implementation detectiveViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.view.backgroundColor = [UIColor clearColor];
        detectiveHatView *hat = [[detectiveHatView alloc] initWithFrame:CGRectMake(-5.5, -4, 29, 13)];
        [head addSubview:hat];
        
        detectiveCoatView *coat = [[detectiveCoatView alloc] initWithFrame:CGRectMake(-1, -1, 23, 38)];
        [body addSubview:coat];
        
        detectiveCoatSleeveView *rSleeve = [[detectiveCoatSleeveView alloc] initWithFrame:CGRectMake(-3, -13, 9, 21)];
        rSleeve.layer.anchorPoint = CGPointMake(.5, 0);
        [rArm insertSubview:rSleeve belowSubview:rHand];
        
        detectiveCoatSleeveView *lSleeve = [[detectiveCoatSleeveView alloc] initWithFrame:CGRectMake(-1, -13, 9, 21)];
        lSleeve.transform = CGAffineTransformMakeScale(-1, 1);
        lSleeve.layer.anchorPoint = CGPointMake(.5, 0);
        [lArm insertSubview:lSleeve belowSubview:lHand];
        
        donut = [[donutView alloc] initWithFrame:CGRectMake(-3, 12, 10, 10)];
        donut.alpha = 0;
        [rHand addSubview:donut];
        
        gun = [[handgunView alloc] initWithFrame:CGRectMake(-4, 12, 14, 11)];
        gun.alpha = 0;
        gun.transform = CGAffineTransformMakeRotation(-1.57);
        [lHand addSubview:gun];
        
        paper = [[newspaperView alloc] initWithFrame:CGRectMake(-17, -10, 29, 21)];
        paper.alpha = 0;
        paper.transform = CGAffineTransformConcat(CGAffineTransformMakeRotation(1), CGAffineTransformMakeScale(1.3, 1.3));
        [rHand addSubview:paper];
        
        walkie = [[walkieTalkieView alloc] initWithFrame:CGRectMake(0, 5, 10, 19)];
        walkie.alpha = 0;
        walkie.transform = CGAffineTransformMakeRotation(2);
        [rHand addSubview:walkie];
        
        cigs = [[cigarette alloc] initWithFrame:CGRectMake(0,20, 7, 3)];
        cigs.transform = CGAffineTransformMakeRotation(3.8);
        [lHand addSubview:cigs];
        
        self.behaviorType = 2;
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)recover{
    [self removeObjectsInHands];
    
    localT.v1 = orientation;
    time.d2 = medium;
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
    localT.lL1 = CGAffineTransformConcat(CGAffineTransformMakeRotation(.4), CGAffineTransformMakeTranslation(3, 12));
    time.d11 = fastest;
    localT.lL2 = lLegTransform;
    time.d12 = slow;
    localT.rL1 = CGAffineTransformConcat(CGAffineTransformMakeRotation(.4), CGAffineTransformMakeTranslation(3, 12));
    time.d13 = fastest;
    localT.rL2 = rLegTransform;
    time.d14 = slow;
    
    [self animateAndStopSoon];
    
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
    localT.rL1 = CGAffineTransformMakeRotation(.4);
    time.d13 = fast;
    localT.rL2 = CGAffineTransformMakeRotation(-.5);
    time.d14 = fast;
    
    [self animateAndContinue];
}

- (void)run{
    [self removeObjectsInHands];
    
    localT.v1 = orientation;
    time.d2 = medium;
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
    localT.rL1 = CGAffineTransformMakeRotation(.4);
    time.d13 = faster;
    localT.rL2 = CGAffineTransformMakeRotation(-.5);
    time.d14 = fast;
    
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
    localT.lL1 = CGAffineTransformMakeRotation(-.5);
    time.d11 = fastest;
    localT.lL2 = CGAffineTransformMakeRotation(0);
    time.d12 = fast;
    localT.rL1 = CGAffineTransformMakeRotation(.5);
    time.d13 = fast;
    localT.rL2 = CGAffineTransformMakeRotation(0);
    time.d14 = faster;
    
    [self animateAndContinue];
}

- (void)flair1{
    [self removeObjectsInHands];
    
    [UIView animateWithDuration:.3 delay:0 options:UIViewAnimationOptionCurveLinear animations:^{
        donut.alpha = 1;
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:.1 delay:.5 options:UIViewAnimationOptionCurveLinear animations:^{
            donut.alpha = 0;
        } completion:nil];
    }];
    
    
    localT.v1 = orientation;
    time.d1 = slowest;
    localT.v2 = orientation;
    time.d2 = slowest;
    localT.h1 = CGAffineTransformMakeTranslation(-2, 0);
    time.d3 = slowest;
    localT.h2 = CGAffineTransformIdentity;
    time.d4 = medium;
    localT.b1 = CGAffineTransformIdentity;
    time.d5 = slowest;
    localT.b2 = CGAffineTransformIdentity;
    time.d6 = slowest;
    localT.lA1 = lArmTransform;
    time.d7 = slowest;
    localT.lA2 = lArmTransform;
    time.d8 = slowest;
    localT.rA1 = CGAffineTransformMakeRotation(2);
    time.d9 = slowest;
    localT.rA2 = rArmTransform;
    time.d10 = slowest;
    localT.lL1 = lLegTransform;
    time.d11 = slowest;
    localT.lL2 = lLegTransform;
    time.d12 = slowest;
    localT.rL1 = rLegTransform;
    time.d13 = slowest;
    localT.rL2 = rLegTransform;
    time.d14 = slowest;
    
    [self animateAndStopSoon];
}

- (void)flair2{
    [self removeObjectsInHands];
    
    [cigs animate];
    
    [cigs performSelector:@selector(deanimate) withObject:nil afterDelay:2];
    [self performSelector:@selector(stop) withObject:nil afterDelay:2];
    
    localT.v1 = orientation;
    time.d1 = slowest;
    localT.v2 = orientation;
    time.d2 = slowest;
    localT.h1 = CGAffineTransformMakeRotation(.3);
    time.d3 = slowest;
    localT.h2 = CGAffineTransformIdentity;
    time.d4 = slowest;
    localT.b1 = CGAffineTransformIdentity;
    time.d5 = slowest;
    localT.b2 = CGAffineTransformIdentity;
    time.d6 = slowest;
    localT.lA1 = CGAffineTransformConcat(CGAffineTransformMakeRotation(2.6), CGAffineTransformMakeTranslation(0, 1));
    time.d7 = slowest;
    localT.lA2 = lArmTransform;
    time.d8 = slowest;
    localT.rA1 = rArmTransform;
    time.d9 = slowest;
    localT.rA2 = rArmTransform;
    time.d10 = slowest;
    localT.lL1 = lLegTransform;
    time.d11 = slowest;
    localT.lL2 = lLegTransform;
    time.d12 = slowest;
    localT.rL1 = rLegTransform;
    time.d13 = slowest;
    localT.rL2 = rLegTransform;
    time.d14 = slowest;
    
    [self animateAndStop];
}

- (void)flair3{
    [self removeObjectsInHands];
    
    [UIView animateWithDuration:.3 delay:.5 options:UIViewAnimationOptionCurveLinear animations:^{
        paper.alpha = 1;
    } completion:nil];
    
    
    localT.v1 = orientation;
    time.d1 = slowest;
    localT.v2 = orientation;
    time.d2 = slowest;
    localT.h1 = CGAffineTransformIdentity;
    time.d3 = slowest;
    localT.h2 = CGAffineTransformIdentity;
    time.d4 = slowest;
    localT.b1 = CGAffineTransformIdentity;
    time.d5 = slowest;
    localT.b2 = CGAffineTransformIdentity;
    time.d6 = slowest;
    localT.lA1 = CGAffineTransformConcat(CGAffineTransformMakeRotation(1), CGAffineTransformMakeScale(.7, 1));
    time.d7 = medium;
    localT.lA2 = lArmTransform;
    time.d8 = slowest;
    localT.rA1 = CGAffineTransformConcat(CGAffineTransformMakeRotation(-1), CGAffineTransformMakeScale(.7, 1));
    time.d9 = medium;
    localT.rA2 = rArmTransform;
    time.d10 = slowest;
    localT.lL1 = lLegTransform;
    time.d11 = slowest;
    localT.lL2 = lLegTransform;
    time.d12 = slowest;
    localT.rL1 = rLegTransform;
    time.d13 = slowest;
    localT.rL2 = rLegTransform;
    time.d14 = slowest;
    
    [self animateAndStop];
}

- (void)attack:(CGPoint) target{
    double rotationValue;
    
    if (self.currentState != attacking) {
        [self removeObjectsInHands];
        [UIView animateWithDuration:.3 animations:^{
            gun.alpha = 1;
        }];
    }
    
    //aiming calculations here:
    //general direction
    if (target.x > self.xPosition && self.facing != [NSNumber numberWithInt:-1]) {
        self.facing = [NSNumber numberWithInt:self.facing.intValue * -1];
        [self changeOrientation];
    }
    else if (target.x < self.xPosition && self.facing == [NSNumber numberWithInt:-1]){
        self.facing = [NSNumber numberWithInt:self.facing.intValue * -1];
        [self changeOrientation];
    }
    
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
    
    //aiming
    
    if (target.x > self.xPosition) {
        if ((target.x - self.xPosition) >= 50 && (target.x - self.xPosition) <= 400 ) {
            double distance = target.x - self.xPosition;
            double h = sqrt(pow(distance, 2) + pow(205, 2));
            rotationValue = acos(distance/h);
            localT.lA1 = CGAffineTransformMakeRotation(rotationValue + 1);
            [self animateAndStop];
        }
        else{
            
            localT.v1 = orientation;
            time.d1 = medium;
            localT.v2 = orientation;
            time.d2 = medium;
            localT.h1 = CGAffineTransformMake(1, 0, 0, 1, 6, 2);
            time.d3 = medium;
            localT.h2 = CGAffineTransformMake(1, 0, 0, 1, 6, 2);
            time.d4 = medium;
            localT.b1 = CGAffineTransformConcat(CGAffineTransformMake(1, .1, 0, 1, 3, 0), CGAffineTransformMakeRotation(.3));;
            time.d5 = medium;
            localT.b2 = CGAffineTransformConcat(CGAffineTransformMake(1, .1, 0, 1, 3, 0), CGAffineTransformMakeRotation(.3));;
            time.d6 = medium;
            localT.lA1 = CGAffineTransformConcat(CGAffineTransformConcat(lArmTransform, CGAffineTransformMakeTranslation(-1, -3)), CGAffineTransformMakeRotation(2));
            time.d7 = medium;
            localT.lA2 = CGAffineTransformConcat(CGAffineTransformConcat(lArmTransform, CGAffineTransformMakeTranslation(-1, -3)), CGAffineTransformMakeRotation(1.9));
            time.d8 = fastest;
            localT.rA1 = CGAffineTransformConcat(CGAffineTransformConcat(rArmTransform, CGAffineTransformMakeTranslation(4, 1)), CGAffineTransformMakeRotation(.1));;
            time.d9 = medium;
            localT.rA2 = CGAffineTransformConcat(CGAffineTransformConcat(rArmTransform, CGAffineTransformMakeTranslation(4, 1)), CGAffineTransformMakeRotation(.1));;
            time.d10 = medium;
            localT.lL1 = lLegTransform;
            time.d11 = medium;
            localT.lL2 = lLegTransform;
            time.d12 = medium;
            localT.rL1 = rLegTransform;
            time.d13 = medium;
            localT.rL2 = rLegTransform;
            time.d14 = medium;
            
            [self animateAndContinue];
        }
    }
    else if (target.x < self.xPosition){
        if ((self.xPosition - target.x) >= 50 && (self.xPosition - target.x) <= 400 ) {
            double distance = self.xPosition - target.x;
            double h = sqrt(pow(distance, 2) + pow(205, 2));
            rotationValue = acos(distance/h);
            localT.lA1 = CGAffineTransformMakeRotation(rotationValue + 1);
            [self animateAndStop];
        }
        else{
            
            localT.v1 = orientation;
            time.d1 = medium;
            localT.v2 = orientation;
            time.d2 = medium;
            localT.h1 = CGAffineTransformMake(1, 0, 0, 1, 6, 2);
            time.d3 = medium;
            localT.h2 = CGAffineTransformMake(1, 0, 0, 1, 6, 2);
            time.d4 = medium;
            localT.b1 = CGAffineTransformConcat(CGAffineTransformMake(1, .1, 0, 1, 3, 0), CGAffineTransformMakeRotation(.3));;
            time.d5 = medium;
            localT.b2 = CGAffineTransformConcat(CGAffineTransformMake(1, .1, 0, 1, 3, 0), CGAffineTransformMakeRotation(.3));;
            time.d6 = medium;
            localT.lA1 = CGAffineTransformConcat(CGAffineTransformConcat(lArmTransform, CGAffineTransformMakeTranslation(-1, -3)), CGAffineTransformMakeRotation(2));
            time.d7 = medium;
            localT.lA2 = CGAffineTransformConcat(CGAffineTransformConcat(lArmTransform, CGAffineTransformMakeTranslation(-1, -3)), CGAffineTransformMakeRotation(1.9));
            time.d8 = fastest;
            localT.rA1 = CGAffineTransformConcat(CGAffineTransformConcat(rArmTransform, CGAffineTransformMakeTranslation(4, 1)), CGAffineTransformMakeRotation(.1));;
            time.d9 = medium;
            localT.rA2 = CGAffineTransformConcat(CGAffineTransformConcat(rArmTransform, CGAffineTransformMakeTranslation(4, 1)), CGAffineTransformMakeRotation(.1));;
            time.d10 = medium;
            localT.lL1 = lLegTransform;
            time.d11 = medium;
            localT.lL2 = lLegTransform;
            time.d12 = medium;
            localT.rL1 = rLegTransform;
            time.d13 = medium;
            localT.rL2 = rLegTransform;
            time.d14 = medium;
            
            [self animateAndContinue];
        }
    }
    else if (target.x == self.xPosition){
        
        localT.v1 = orientation;
        time.d1 = medium;
        localT.v2 = orientation;
        time.d2 = medium;
        localT.h1 = CGAffineTransformMake(1, 0, 0, 1, 6, 2);
        time.d3 = medium;
        localT.h2 = CGAffineTransformMake(1, 0, 0, 1, 6, 2);
        time.d4 = medium;
        localT.b1 = CGAffineTransformConcat(CGAffineTransformMake(1, .1, 0, 1, 3, 0), CGAffineTransformMakeRotation(.3));;
        time.d5 = medium;
        localT.b2 = CGAffineTransformConcat(CGAffineTransformMake(1, .1, 0, 1, 3, 0), CGAffineTransformMakeRotation(.3));;
        time.d6 = medium;
        localT.lA1 = CGAffineTransformConcat(CGAffineTransformConcat(lArmTransform, CGAffineTransformMakeTranslation(-1, -3)), CGAffineTransformMakeRotation(2));
        time.d7 = medium;
        localT.lA2 = CGAffineTransformConcat(CGAffineTransformConcat(lArmTransform, CGAffineTransformMakeTranslation(-1, -3)), CGAffineTransformMakeRotation(1.9));
        time.d8 = fastest;
        localT.rA1 = CGAffineTransformConcat(CGAffineTransformConcat(rArmTransform, CGAffineTransformMakeTranslation(4, 1)), CGAffineTransformMakeRotation(.1));;
        time.d9 = medium;
        localT.rA2 = CGAffineTransformConcat(CGAffineTransformConcat(rArmTransform, CGAffineTransformMakeTranslation(4, 1)), CGAffineTransformMakeRotation(.1));;
        time.d10 = medium;
        localT.lL1 = lLegTransform;
        time.d11 = medium;
        localT.lL2 = lLegTransform;
        time.d12 = medium;
        localT.rL1 = rLegTransform;
        time.d13 = medium;
        localT.rL2 = rLegTransform;
        time.d14 = medium;
        
        [self animateAndContinue];
        
    }
}

- (void)callBackup{
    [self removeObjectsInHands];
    [UIView animateWithDuration:.3 delay:0 options:UIViewAnimationOptionCurveLinear animations:^{
        walkie.alpha = 1;
    } completion:nil];
    
    localT.v1 = orientation;
    time.d1 = slowest;
    localT.v2 = orientation;
    time.d2 = slowest;
    localT.h1 = CGAffineTransformIdentity;
    time.d3 = slowest;
    localT.h2 = CGAffineTransformIdentity;
    time.d4 = medium;
    localT.b1 = CGAffineTransformIdentity;
    time.d5 = slowest;
    localT.b2 = CGAffineTransformIdentity;
    time.d6 = slowest;
    localT.lA1 = lArmTransform;
    time.d7 = slowest;
    localT.lA2 = lArmTransform;
    time.d8 = slowest;
    localT.rA1 = CGAffineTransformMakeRotation(-2.2);
    time.d9 = medium;
    localT.rA2 = CGAffineTransformMakeRotation(-2.2);
    time.d10 = slowest;
    localT.lL1 = lLegTransform;
    time.d11 = slowest;
    localT.lL2 = lLegTransform;
    time.d12 = slowest;
    localT.rL1 = rLegTransform;
    time.d13 = slowest;
    localT.rL2 = rLegTransform;
    time.d14 = slowest;
    
    [self animateAndStop];
}

#pragma AI Methods

- (void)passive{
    
    srand(rand());
    
    uint duration = 1 + rand() % 5;
    uint type = 1 + rand() % 4;
    self.moveDuration = [NSNumber numberWithUnsignedInt:duration + 3];
    NSDictionary *dictionary = [[NSDictionary alloc] initWithObjectsAndKeys:self.moveDuration,@"k1",self.tag,@"k2",self.facing,@"k3", nil];
    
    switch (type) {
        case 1:
            self.facing = [NSNumber numberWithInt:self.facing.intValue * -1];
            orientation = CGAffineTransformMake(1 * self.facing.intValue, 0, 0, 1, 0, 0);
            [self walk];
            [[NSNotificationCenter defaultCenter] postNotificationName:@"isWalking" object:self userInfo:dictionary];
            [self performSelector:@selector(updateCurrentState) withObject:nil afterDelay:self.moveDuration.unsignedIntValue];
            break;
            
        case 2:
            [self flair1];
            [self performSelector:@selector(updateCurrentState) withObject:nil afterDelay:duration];
            break;
            
        case 3:
            [self flair2];
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
    NSDictionary *dictionary = [[NSDictionary alloc] initWithObjectsAndKeys:self.tag,@"k1",nil];
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
    [lArm removeFromSuperview];
    lArm = nil;
    [rArm removeFromSuperview];
    rArm = nil;
    [lLeg removeFromSuperview];
    lLeg = nil;
    [rLeg removeFromSuperview];
    rLeg = nil;
    
    self.tag = nil;
    self.facing = nil;
    self.moveDuration = nil;
    self.view = nil;
}

- (void)attacking{
    
}

@end
