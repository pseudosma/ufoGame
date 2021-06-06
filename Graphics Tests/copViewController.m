//
//  copViewController.m
//  Graphics Tests
//
//  Created by DM on 7/21/13.
//  Copyright (c) 2013 DM. All rights reserved.
//

#import "copViewController.h"


@implementation copViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.view.backgroundColor = [UIColor clearColor];
        copUniformBody *uniform = [[copUniformBody alloc] initWithFrame:CGRectMake(-1, -1, 18, 28)];
        [body addSubview:uniform];
        
        copHatView *hat = [[copHatView alloc] initWithFrame:CGRectMake(-3, -5, 23, 16)];
        [head addSubview:hat];
        
        copUniformPantLeg *rPantLeg = [[copUniformPantLeg alloc] initWithFrame:CGRectMake(-2, -13, 10, 21)];
        rPantLeg.layer.anchorPoint = CGPointMake(.5,0);
        [rLeg addSubview:rPantLeg];
        
        copUniformPantLeg *lPantLeg = [[copUniformPantLeg alloc] initWithFrame:CGRectMake(-2, -13, 10, 21)];
        lPantLeg.layer.anchorPoint = CGPointMake(.5,0);
        [lLeg addSubview:lPantLeg];
        
        copUniformSleeve *rSleeve = [[copUniformSleeve alloc] initWithFrame:CGRectMake(-2, -12, 9, 21)];
        rSleeve.layer.anchorPoint = CGPointMake(.5, 0);
        [rArm insertSubview:rSleeve belowSubview:rHand];
        
        copUniformSleeve *lSleeve = [[copUniformSleeve alloc] initWithFrame:CGRectMake(-2, -12, 9, 21)];
        lSleeve.layer.anchorPoint = CGPointMake(.5, 0);
        [lArm insertSubview:lSleeve belowSubview:lHand];
        
        gun = [[handgunView alloc] initWithFrame:CGRectMake(-4, 12, 14, 11)];
        gun.alpha = 0;
        gun.transform = CGAffineTransformMakeRotation(-1.57);
        [lHand addSubview:gun];
        
        baton = [[batonView alloc] initWithFrame:CGRectMake(0, 0, 12, 23)];
        baton.alpha = 0;
        baton.layer.anchorPoint = CGPointMake(.3, .75);
        [rHand addSubview:baton];
        
        CABasicAnimation *twirl = [CABasicAnimation animationWithKeyPath:@"transform"];
        twirl.valueFunction = [CAValueFunction functionWithName:kCAValueFunctionRotateZ];
        twirl.fromValue = [NSNumber numberWithFloat:0];
        twirl.toValue = [NSNumber numberWithFloat:M_PI * 2];
        twirl.duration = .6;
        twirl.additive = YES;
        twirl.repeatCount = INFINITY;
        [baton.layer addAnimation:twirl forKey:@"transform"];
        
        whistle = [[whistleView alloc] initWithFrame:CGRectMake(-4, 11, 12, 9)];
        whistle.alpha = 0;
        whistle.transform = CGAffineTransformMakeRotation(-3.1);
        [lHand addSubview:whistle];
        
        donut = [[donutView alloc] initWithFrame:CGRectMake(-3, 12, 10, 10)];
        donut.alpha = 0; 
        [rHand addSubview:donut];
        
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
    
    [UIView animateWithDuration:.3 animations:^{
        whistle.alpha = 1;
    }];
    
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
    
    [UIView animateWithDuration:.5 animations:^{
        baton.alpha = 1;
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
    localT.lA1 = lArmTransform;
    time.d7 = slowest;
    localT.lA2 = CGAffineTransformMakeRotation(.5);
    time.d8 = slowest;
    localT.rA1 = CGAffineTransformMakeRotation(-.1);
    time.d9 = slowest;
    localT.rA2 = CGAffineTransformMakeRotation(-.8);
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
    self.targetedArea = CGRectMake(target.x - 10, 60, 20, 20);
    
    if (self.currentState != attacking) {
        [self removeObjectsInHands];
        [UIView animateWithDuration:.3 animations:^{
            gun.alpha = 1;
        }];
    }else{
        gun.alpha = 1;
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
        if ((target.x - self.xPosition) >= 60 && (target.x - self.xPosition) <= 400 ) {
            double distance = target.x - self.xPosition;
            double h = sqrt(pow(distance, 2) + pow(205, 2));
            rotationValue = acos(distance/h);
            localT.lA1 = CGAffineTransformMakeRotation(rotationValue + 1.2);
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
        if ((self.xPosition - target.x) >= 60 && (self.xPosition - target.x) <= 400 ) {
            double distance = self.xPosition - target.x;
            double h = sqrt(pow(distance, 2) + pow(205, 2));
            rotationValue = acos(distance/h);
            localT.lA1 = CGAffineTransformMakeRotation(rotationValue + 1.2);
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
            [self performSelector:@selector(updateCurrentState) withObject:nil afterDelay:duration + 1];
            break;
            
        case 3:
            [self flair2];
            [self performSelector:@selector(updateCurrentState) withObject:nil afterDelay:duration + .5];
            [self performSelector:@selector(music) withObject:nil afterDelay:.7];
            break;
            
        case 4:
            [self flair3];
            [self performSelector:@selector(updateCurrentState) withObject:nil afterDelay:duration + 1];
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
    //this is set up this way to kill the passive loop without glitches
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
        effect.startPoint = CGPointMake(self.xPosition - 30, 255);
        effect.endPoint = CGPointMake(number.floatValue, 85);
    }else{
        effect.startPoint = CGPointMake(self.xPosition + 30, 255);
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

- (void)music{
    effectClass *effect = [[effectClass alloc] init];
    effect.type = music;
    if (self.facing.floatValue == 1) {
        effect.startPoint = CGPointMake(self.xPosition - 10, 240);
    }else{
        effect.startPoint = CGPointMake(self.xPosition + 10, 240);
    }    NSDictionary *dictionary = [[NSDictionary alloc] initWithObjectsAndKeys:effect,@"k1",nil];
    [[NSNotificationCenter defaultCenter] postNotification:[NSNotification notificationWithName:@"effectCalled" object:nil userInfo:dictionary]];
    effect = nil;
    dictionary = nil;
}

@end
