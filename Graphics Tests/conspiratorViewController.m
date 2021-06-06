//
//  conspiratorViewController.m
//  Graphics Tests
//
//  Created by DM on 10/5/13.
//  Copyright (c) 2013 DM. All rights reserved.
//

#import "conspiratorViewController.h"

@interface conspiratorViewController ()

@end

@implementation conspiratorViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.view.backgroundColor = [UIColor clearColor];
        
        conspiratorHairView *hair = [[conspiratorHairView alloc] initWithFrame:CGRectMake(-6.5, -4, 40, 25)];
        [head addSubview:hair];
        
        conspiratorOutfitView *outfit = [[conspiratorOutfitView alloc] initWithFrame:CGRectMake(-1, -1, 22, 28)];
        [body addSubview:outfit];
        
        conspiratorPantLegView *rPantLeg = [[conspiratorPantLegView alloc] initWithFrame:CGRectMake(-2, -13, 10, 21)];
        rPantLeg.layer.anchorPoint = CGPointMake(.5,0);
        [rLeg addSubview:rPantLeg];
        
        conspiratorPantLegView *lPantLeg = [[conspiratorPantLegView alloc] initWithFrame:CGRectMake(-2, -13, 10, 21)];
        lPantLeg.layer.anchorPoint = CGPointMake(.5,0);
        [lLeg addSubview:lPantLeg];
        
        conspiratorSleeveView *rSleeve = [[conspiratorSleeveView alloc] initWithFrame:CGRectMake(-3, -13, 9, 21)];
        rSleeve.layer.anchorPoint = CGPointMake(.5, 0);
        [rArm insertSubview:rSleeve belowSubview:rHand];
        
        conspiratorSleeveView *lSleeve = [[conspiratorSleeveView alloc] initWithFrame:CGRectMake(-1, -13, 9, 21)];
        lSleeve.transform = CGAffineTransformMakeScale(-1, 1);
        lSleeve.layer.anchorPoint = CGPointMake(.5, 0);
        [lArm insertSubview:lSleeve belowSubview:lHand];
        
        self.behaviorType = 5;
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
    localT.lA1 = CGAffineTransformMakeRotation(2.2);
    time.d7 = fast;
    localT.lA2 = lArmTransform;
    time.d8 = fast;
    localT.rA1 = CGAffineTransformMakeRotation(-2.2);
    time.d9 = fast;
    localT.rA2 = rArmTransform;
    time.d10 = fast;
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
    localT.lA1 = CGAffineTransformMakeRotation(2);
    time.d7 = slowest;
    localT.lA2 = CGAffineTransformMakeRotation(.3);
    time.d8 = slowest;
    localT.rA1 = CGAffineTransformMakeRotation(-2);
    time.d9 = slowest;
    localT.rA2 = CGAffineTransformMakeRotation(-.3);
    time.d10 = slowest;
    localT.lL1 = CGAffineTransformMakeRotation(-.2);
    time.d11 = slowest;
    localT.lL2 = CGAffineTransformMakeRotation(-.2);
    time.d12 = slowest;
    localT.rL1 = CGAffineTransformMakeRotation(.2);
    time.d13 = slowest;
    localT.rL2 = CGAffineTransformMakeRotation(.2);
    time.d14 = slowest;
    
    [self animateAndContinue];
}

- (void)flair3{
    [self removeObjectsInHands];
    
    localT.v1 = orientation;
    time.d1 = fast;
    localT.v2 = orientation;
    time.d2 = fast;
    localT.h1 = CGAffineTransformMakeTranslation(0, -6);
    time.d3 = fast;
    localT.h2 = CGAffineTransformMakeTranslation(0, -0.5);
    time.d4 = fast;
    localT.b1 = CGAffineTransformMakeTranslation(0, -6);
    time.d5 = fast;
    localT.b2 = CGAffineTransformMakeTranslation(0, -0.5);
    time.d6 = fast;
    localT.lA1 = CGAffineTransformConcat(CGAffineTransformMakeTranslation(-6, 3), CGAffineTransformMakeRotation(1.9));
    time.d7 = fast;
    localT.lA2 = CGAffineTransformMakeRotation(1);
    time.d8 = fast;
    localT.rA1 = CGAffineTransformConcat(CGAffineTransformMakeTranslation(6, 3), CGAffineTransformMakeRotation(-1.9));
    time.d9 = fast;
    localT.rA2 = CGAffineTransformMakeRotation(-1);
    time.d10 = fast;
    localT.lL1 = CGAffineTransformConcat(CGAffineTransformMakeTranslation(0, -6), CGAffineTransformMakeRotation(-.1));
    time.d11 = fast;
    localT.lL2 = CGAffineTransformMakeRotation(-.4);
    time.d12 = fast;
    localT.rL1 = CGAffineTransformConcat(CGAffineTransformMakeTranslation(0, -6), CGAffineTransformMakeRotation(.1));
    time.d13 = fast;
    localT.rL2 = CGAffineTransformMakeRotation(.4);
    time.d14 = fast;
    
    [self animateAndContinue];
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
