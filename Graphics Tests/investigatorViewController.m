//
//  investigatorViewController.m
//  Graphics Tests
//
//  Created by DM on 8/4/13.
//  Copyright (c) 2013 DM. All rights reserved.
//

#import "investigatorViewController.h"

@implementation investigatorViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.view.backgroundColor = [UIColor clearColor];
        investigatorShirtView *shirt = [[investigatorShirtView alloc] initWithFrame:CGRectMake(-1, -1, 18, 28)];
        [body addSubview:shirt];
        
        investigatorGlassesView *glasses = [[investigatorGlassesView alloc] initWithFrame:CGRectMake(0,5, 18, 25)];
        [head addSubview:glasses];
        
        investigatorShortsLegView *rPantLeg = [[investigatorShortsLegView alloc] initWithFrame:CGRectMake(-4, -13, 10, 21)];
        rPantLeg.layer.anchorPoint = CGPointMake(.5,0);
        [rLeg addSubview:rPantLeg];
        
        investigatorShortsLegView *lPantLeg = [[investigatorShortsLegView alloc] initWithFrame:CGRectMake(-4, -13, 10, 21)];
        lPantLeg.layer.anchorPoint = CGPointMake(.5,0);
        [lLeg addSubview:lPantLeg];
        
        investigatorShirtSleeveView *rSleeve = [[investigatorShirtSleeveView alloc] initWithFrame:CGRectMake(-3, -13, 9, 21)];
        rSleeve.layer.anchorPoint = CGPointMake(.5, 0);
        [rArm insertSubview:rSleeve belowSubview:rHand];
        
        investigatorShirtSleeveView *lSleeve = [[investigatorShirtSleeveView alloc] initWithFrame:CGRectMake(-1, -13, 9, 21)];
        lSleeve.layer.anchorPoint = CGPointMake(.5, 0);
        lSleeve.transform = CGAffineTransformMakeScale(-1, 1);
        [lArm insertSubview:lSleeve belowSubview:lHand];
        
        gun = [[handgunView alloc] initWithFrame:CGRectMake(-4, 12, 14, 11)];
        gun.alpha = 0;
        gun.transform = CGAffineTransformMakeRotation(-1.57);
        [lHand addSubview:gun];
        
        paper = [[newspaperView alloc] initWithFrame:CGRectMake(-17, -10, 29, 21)];
        paper.alpha = 0;
        paper.transform = CGAffineTransformConcat(CGAffineTransformMakeRotation(1), CGAffineTransformMakeScale(1.3, 1.3));
        [rHand addSubview:paper];
        
        yoyo = [[yoyoView alloc] initWithFrame:CGRectMake(7, 5, 10, 25)];
        yoyo.alpha = 0;
        yoyo.transform = CGAffineTransformMakeRotation(-1.4);
        [lHand addSubview:yoyo];
        
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

- (void)flair1{
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
    
    [self animateAndStop];}


- (void)flair3{
    [self removeObjectsInHands];
    
    [UIView animateWithDuration:1 animations:^{
        yoyo.alpha = 1;
    }];
    
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
    localT.lA1 = CGAffineTransformMakeRotation(1.4);
    time.d7 = slow;
    localT.lA2 = CGAffineTransformMakeRotation(1.5);
    time.d8 = slow;
    localT.rA1 = rArmTransform;
    time.d9 = slowest;
    localT.rA2 = rArmTransform;
    time.d10 = slower;
    localT.lL1 = lLegTransform;
    time.d11 = slowest;
    localT.lL2 = lLegTransform;
    time.d12 = slowest;
    localT.rL1 = rLegTransform;
    time.d13 = slowest;
    localT.rL2 = rLegTransform;
    time.d14 = slowest;
    
    [self animateAndContinue];
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

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
