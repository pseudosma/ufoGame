//
//  militaryViewController.m
//  Graphics Tests
//
//  Created by DM on 7/30/13.
//  Copyright (c) 2013 DM. All rights reserved.
//

#import "militaryViewController.h"


@implementation militaryViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.view.backgroundColor = [UIColor clearColor];
        
        militaryHelmetView *helmet = [[militaryHelmetView alloc] initWithFrame:CGRectMake(-3.5, -12, 25, 23)];
        [head addSubview:helmet];
        
        militaryUniformView *uniform = [[militaryUniformView alloc] initWithFrame:CGRectMake(-6, -1, 29, 24)];
        [body addSubview:uniform];
        
        militaryUniformPantLegView *rPantLeg = [[militaryUniformPantLegView alloc] initWithFrame:CGRectMake(-2, -13, 10, 21)];
        rPantLeg.layer.anchorPoint = CGPointMake(.5,0);
        [rLeg addSubview:rPantLeg];
        
        militaryUniformPantLegView *lPantLeg = [[militaryUniformPantLegView alloc] initWithFrame:CGRectMake(-2, -13, 10, 21)];
        lPantLeg.layer.anchorPoint = CGPointMake(.5,0);
        [lLeg addSubview:lPantLeg];
        
        rifle = [[rifleView alloc] initWithFrame:CGRectMake(-28, 0, 33, 20)];
        rifle.alpha = 0;
        [rHand addSubview:rifle];
        
        bazooka = [[bazookaView alloc] initWithFrame:CGRectMake(-22, -8, 48, 17)];
        bazooka.alpha = 0;
        bazooka.transform = CGAffineTransformMakeRotation(-1.57);
        [lHand addSubview:bazooka];
        
        self.behaviorType = 4;
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)attack:(CGPoint) target{
    //standard rifle attack
    double rotationValue;
    
    if (self.currentState != attacking) {
        [self removeObjectsInHands];
        [UIView animateWithDuration:.3 animations:^{
            rifle.alpha = 1;
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
    
    //reset values to default
    
    rifle.transform = CGAffineTransformIdentity;
    
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
        if ((target.x - self.xPosition) >= 60 && (target.x - self.xPosition) <= 350 ) {
            double distance = target.x - self.xPosition;
            double h = sqrt(pow(distance, 2) + pow(205, 2));
            rotationValue = acos(distance/h);
            localT.rA1 = CGAffineTransformMakeRotation(rotationValue -.3);
            localT.lA1 = CGAffineTransformMakeRotation(rotationValue + .5);
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
            
            [UIView animateWithDuration:0.5 animations:^{
                rifle.transform = CGAffineTransformConcat(CGAffineTransformMakeRotation(-.5), CGAffineTransformMakeTranslation(8, 8));
            }];
            
            [self animateAndContinue];
        }
    }
    else if (target.x < self.xPosition){
        if ((self.xPosition - target.x) >= 60 && (self.xPosition - target.x) <= 350 ) {
            double distance = self.xPosition - target.x;
            double h = sqrt(pow(distance, 2) + pow(205, 2));
            rotationValue = acos(distance/h);
            localT.rA1 = CGAffineTransformMakeRotation(rotationValue - .3);
            localT.lA1 = CGAffineTransformMakeRotation(rotationValue + .5);
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
            
            [UIView animateWithDuration:0.5 animations:^{
                rifle.transform = CGAffineTransformConcat(CGAffineTransformMakeRotation(-.5), CGAffineTransformMakeTranslation(8, 8));
            }];
            
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

- (void)superAttack:(CGPoint) target{
    
    //gernade attack
    
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
    
    localT.v1 = CGAffineTransformMakeRotation(.2);
    time.d1 = slower;
    localT.v2 = CGAffineTransformMakeRotation(-.1);
    time.d2 = faster;
    localT.h1 = CGAffineTransformIdentity;
    time.d3 = medium;
    localT.h2 = CGAffineTransformIdentity;
    time.d4 = medium;
    localT.b1 = CGAffineTransformIdentity;
    time.d5 = medium;
    localT.b2 = CGAffineTransformIdentity;
    time.d6 = medium;
    localT.lA1 = CGAffineTransformMakeRotation(1.6);
    time.d7 = slower;
    localT.lA2 = lArmTransform;
    time.d8 = faster;
    localT.rA1 = CGAffineTransformMakeRotation(-1);
    time.d9 = slower;
    localT.rA2 = CGAffineTransformMakeRotation(-4.1);
    time.d10 = faster;
    localT.lL1 = CGAffineTransformMakeRotation(-.6);
    time.d11 = slower;
    localT.lL2 = lLegTransform;
    time.d12 = faster;
    localT.rL1 = CGAffineTransformMakeRotation(.5);
    time.d13 = slower;
    localT.rL2 = rLegTransform;
    time.d14 = faster;
    
    [self animateAndStopSoon];
    
    }

- (void)superMegaAttack:(CGPoint) target{
    double rotationValue;
    
    if (self.currentState != attacking) {
        [self removeObjectsInHands];
        [UIView animateWithDuration:.3 animations:^{
            bazooka.alpha = 1;
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
        if ((target.x - self.xPosition) >= 60 && (target.x - self.xPosition) <= 350 ) {
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
        if ((self.xPosition - target.x) >= 60 && (self.xPosition - target.x) <= 350 ) {
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

#pragma AI Methods

- (void)passive{

}


- (void)alerted{
    //this is set up this way to kill the passive animation loop without glitches
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

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
