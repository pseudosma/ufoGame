//
//  farmerViewController.m
//  Graphics Tests
//
//  Created by DM on 7/19/13.
//  Copyright (c) 2013 DM. All rights reserved.
//

#import "farmerViewController.h"

@implementation farmerViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.view.backgroundColor = [UIColor clearColor];
        strawHatView *strawHat = [[strawHatView alloc] initWithFrame:CGRectMake(-3, -7, 24, 15)];
        [head addSubview:strawHat];
        
        overallsView *overalls = [[overallsView alloc] initWithFrame:CGRectMake(0, 2, 16, 26)];
        [body addSubview:overalls];
        
        overallsPantLeg *rOverallsPantLeg = [[overallsPantLeg alloc] initWithFrame:CGRectMake(-2, -15, 10, 21)];
        rOverallsPantLeg.layer.anchorPoint = CGPointMake(.5,0);
        [rLeg addSubview:rOverallsPantLeg];
        
        overallsPantLeg *lOverallsPantLeg = [[overallsPantLeg alloc] initWithFrame:CGRectMake(-2, -15, 10, 21)];
        lOverallsPantLeg.layer.anchorPoint = CGPointMake(.5,0);
        [lLeg addSubview:lOverallsPantLeg];
        
        hoe = [[hoeView alloc] initWithFrame:CGRectMake(-11, -9, 10, 46)];
        hoe.transform = CGAffineTransformMakeRotation(-1.3);
        hoe.alpha = 0;
        [rHand addSubview:hoe];
        
        shotgun = [[shotgunView alloc] initWithFrame:CGRectMake(-20, 10, 26, 14)];
        shotgun.alpha = 0;
        [rHand addSubview:shotgun];
        
        seeds = [[seedView alloc] initWithFrame:CGRectMake(0, 30, 1, 1)];
        [self.view addSubview:seeds];
        
        self.behaviorType = 1;
    }
    return self;
}

- (void)flair1{
    [self removeObjectsInHands];
    
    localT.v1 = orientation;
    time.d1 = slowest;
    localT.v2 = orientation;
    time.d2 = slowest;
    localT.h1 = CGAffineTransformMakeRotation(-.2);
    time.d3 = slowest;
    localT.h2 = CGAffineTransformIdentity;
    time.d4 = slowest;
    localT.b1 = CGAffineTransformIdentity;
    time.d5 = slowest;
    localT.b2 = CGAffineTransformIdentity;
    time.d6 = slowest;
    localT.lA1 = CGAffineTransformMakeRotation(2.8);
    time.d7 = slowest;
    localT.lA2 = lArmTransform;
    time.d8 = slowest;
    localT.rA1 = CGAffineTransformMakeRotation(-.4);
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
    
    localT.v1 = orientation;
    time.d1 = fastest;
    localT.v2 = orientation;
    time.d2 = fastest;
    localT.h1 = CGAffineTransformIdentity;
    time.d3 = fastest;
    localT.h2 = CGAffineTransformIdentity;
    time.d4 = fastest;
    localT.b1 = CGAffineTransformIdentity;
    time.d5 = fastest;
    localT.b2 = CGAffineTransformIdentity;
    time.d6 = fastest;
    localT.lA1 = CGAffineTransformMakeRotation(1.5);
    time.d7 = fastest;
    localT.lA2 = lArmTransform;
    time.d8 = slowest;
    localT.rA1 = rArmTransform;
    time.d9 = fastest;
    localT.rA2 = rArmTransform;
    time.d10 = fastest;
    localT.lL1 = lLegTransform;
    time.d11 = fastest;
    localT.lL2 = lLegTransform;
    time.d12 = fastest;
    localT.rL1 = rLegTransform;
    time.d13 = fastest;
    localT.rL2 = rLegTransform;
    time.d14 = fastest;
    [seeds animate];
    
    [self animateAndStopSoon];}

- (void)flair3{
    [self removeObjectsInHands];
    
    [UIView animateWithDuration:.3 animations:^{
        hoe.alpha = 1;
    }];
    
    localT.v1 = orientation;
    time.d1 = slowest;
    localT.v2 = orientation;
    time.d2 = slowest;
    localT.h1 = CGAffineTransformConcat(CGAffineTransformMakeRotation(-.3), CGAffineTransformMakeTranslation(-14, 4));
    time.d3 = slowest;
    localT.h2 = CGAffineTransformConcat(CGAffineTransformMakeRotation(-.35), CGAffineTransformMakeTranslation(-14, 5));
    time.d4 = slow;
    localT.b1 = CGAffineTransformConcat(CGAffineTransformMakeRotation(-.5), CGAffineTransformMakeTranslation(-5, 0));
    time.d5 = slowest;
    localT.b2 = CGAffineTransformConcat(CGAffineTransformMakeRotation(-.7), CGAffineTransformMakeTranslation(-5, 0));
    time.d6 = slow;
    localT.lA1 = CGAffineTransformConcat(CGAffineTransformMakeRotation(.7), CGAffineTransformMakeTranslation(-8, -3));
    time.d7 = slowest;
    localT.lA2 = CGAffineTransformConcat(CGAffineTransformMakeRotation(.1), CGAffineTransformMakeTranslation(-7, -1));
    time.d8 = slow;
    localT.rA1 = CGAffineTransformConcat(CGAffineTransformMakeRotation(0), CGAffineTransformMakeTranslation(-10, -5));
    time.d9 = slowest;
    localT.rA2 = CGAffineTransformConcat(CGAffineTransformMakeRotation(-.7), CGAffineTransformMakeTranslation(-10, -3));
    time.d10 = slow;
    localT.lL1 = CGAffineTransformMakeRotation(-.1);
    time.d11 = slowest;
    localT.lL2 = CGAffineTransformMakeRotation(-.1);
    time.d12 = slowest;
    localT.rL1 = rLegTransform;
    time.d13 = slowest;
    localT.rL2 = rLegTransform;
    time.d14 = slowest;
    
    [self animateAndContinue];
}

- (void)attack:(CGPoint) target{
    double rotationValue;
    self.targetedArea = CGRectMake(target.x - 10, 60, 20, 20);
    
    if (self.currentState != attacking) {
        [self removeObjectsInHands];
        [UIView animateWithDuration:.3 animations:^{
            shotgun.alpha = 1;
        }];
    }else{
        shotgun.alpha = 1;
    }
    
    //aiming calculations here:
    //general direction
    if (target.x > self.xPosition) {
        self.facing = [NSNumber numberWithInt:-1];
        [self changeOrientation];
    }
    else if (target.x < self.xPosition){
        self.facing = [NSNumber numberWithInt:1];
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
            localT.rA1 = CGAffineTransformMakeRotation(rotationValue -.3);
            localT.lA1 = CGAffineTransformMakeRotation(rotationValue + .5);
            [self animateAndStop];
            NSNumber *number = [NSNumber numberWithFloat:target.x];
            [self performSelector:@selector(shoot:) withObject:number afterDelay:.5];
            number = nil;
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
            self.targetedArea = CGRectZero;
            [self performSelector:@selector(backToPassive) withObject:nil afterDelay:10];
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
            NSNumber *number = [NSNumber numberWithFloat:target.x];
            [self performSelector:@selector(shoot:) withObject:number afterDelay:.5];
            number = nil;
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
            localT.b1 = CGAffineTransformConcat(CGAffineTransformMake(1, .1, 0, 1, 3, 0), CGAffineTransformMakeRotation(.3));
            time.d5 = medium;
            localT.b2 = CGAffineTransformConcat(CGAffineTransformMake(1, .1, 0, 1, 3, 0), CGAffineTransformMakeRotation(.3));
            time.d6 = medium;
            localT.lA1 = CGAffineTransformConcat(CGAffineTransformConcat(lArmTransform, CGAffineTransformMakeTranslation(-1, -3)), CGAffineTransformMakeRotation(2));
            time.d7 = medium;
            localT.lA2 = CGAffineTransformConcat(CGAffineTransformConcat(lArmTransform, CGAffineTransformMakeTranslation(-1, -3)), CGAffineTransformMakeRotation(1.9));
            time.d8 = fastest;
            localT.rA1 = CGAffineTransformConcat(CGAffineTransformConcat(rArmTransform, CGAffineTransformMakeTranslation(4, 1)), CGAffineTransformMakeRotation(.1));
            time.d9 = medium;
            localT.rA2 = CGAffineTransformConcat(CGAffineTransformConcat(rArmTransform, CGAffineTransformMakeTranslation(4, 1)), CGAffineTransformMakeRotation(.1));
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
            self.targetedArea = CGRectZero;
            [self performSelector:@selector(backToPassive) withObject:nil afterDelay:10];
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
        self.targetedArea = CGRectZero;
        [self performSelector:@selector(backToPassive) withObject:nil afterDelay:10];
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    
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
            [self performSelector:@selector(updateCurrentState) withObject:nil afterDelay:duration +1];
            break;
            
        case 3:
            [self flair2];
            [self performSelector:@selector(updateCurrentState) withObject:nil afterDelay:duration +1];
            break;
            
        case 4:
            [self flair3];
            [self performSelector:@selector(updateCurrentState) withObject:nil afterDelay:duration + 2];
            break;
            
        default:
            break;
    }
}


- (void)alerted{
    //this is set up this way to kill the passive loop without glitches. It's still trying to perform the update selector
    [self stop];
    self.currentState = abducting;
}

- (void)scared{
    
}

- (void)angry{
    //kill the passive loop without glitches
    [self stop];
    self.currentState = attacking;
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

- (void)shoot:(NSNumber*)number{
    [self performSelector:@selector(didVCAttack) withObject:nil afterDelay:.4];
    effectClass *effect = [[effectClass alloc] init];
    effect.type = bullet;
    if (self.facing.floatValue == 1) {
        effect.startPoint = CGPointMake(self.xPosition - 30, 266);
        effect.endPoint = CGPointMake(number.floatValue, 85);
    }else{
        effect.startPoint = CGPointMake(self.xPosition + 30, 266);
        effect.endPoint = CGPointMake(number.floatValue, 85);
    }
    NSDictionary *dictionary = [[NSDictionary alloc] initWithObjectsAndKeys:effect,@"k1",nil];
    [[NSNotificationCenter defaultCenter] postNotification:[NSNotification notificationWithName:@"effectCalled" object:nil userInfo:dictionary]];
    effect.type = smoke;
    dictionary = nil;
    dictionary = [[NSDictionary alloc] initWithObjectsAndKeys:effect,@"k1",nil];
    [[NSNotificationCenter defaultCenter] postNotification:[NSNotification notificationWithName:@"effectCalled" object:nil userInfo:dictionary]];
    effect = nil;
    dictionary = nil;
}

- (void)didVCAttack{
    // the bullet animation always lasts 1/2 a second. The targetedArea is used to keep track of where it hit. If it's within the ufoBoundingBox at that time, we know there's a hit. This BOOL turned on forces the CGRectContainsRect to happen.
    self.didAttack = YES;
}

@end
