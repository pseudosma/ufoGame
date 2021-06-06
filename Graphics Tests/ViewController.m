//
//  ViewController.m
//  Graphics Tests
//
//  Created by DM on 2/17/13.
//  Copyright (c) 2013 DM. All rights reserved.
//

/*Notes 6/7/2014:
 working on reconsolidating this primary view controller to make it more efficient. More acyncronisity would be nice.
*/
#import "ViewController.h"

@implementation ViewController
@synthesize lastContentOffset, stoppingOffset, distance, gravityBeamLocation, queue;

- (void)viewDidLoad
{
    
    
    queue = [[NSOperationQueue alloc]init];
    timeOp = [[timerOperation alloc] init];
    [queue addOperation:timeOp];
    
    playArea = CGRectMake(0, 235, INFINITY, 85);
    //secondTimer = 0;
    
    isAdusting = NO;
    isMoving = NO;
    
    [self setSizing];
    
    self.lastContentOffset = 0;
    self.distance = 0;
    self.stoppingOffset = 0;
    
    uvc = [[UFOViewController alloc] init];
    uvc.gravityBeamOn = NO;
    [self addChildViewController:uvc];
    
    cvc = [[cowViewController alloc] init];
    cvc.tag = [NSNumber numberWithInt:1];
    [self addChildViewController:cvc];
    
    cvc2 = [[cowViewController alloc] init];
    cvc2.tag = [NSNumber numberWithInt:2];
    [self addChildViewController:cvc2];
    
    cvc3 = [[cowViewController alloc] init];
    cvc3.tag = [NSNumber numberWithInt:3];
    [self addChildViewController:cvc3];
    
    cvc4 = [[cowViewController alloc] init];
    cvc4.tag = [NSNumber numberWithInt:4];
    [self addChildViewController:cvc4];
    
    cvc5 = [[cowViewController alloc] init];
    cvc5.tag = [NSNumber numberWithInt:5];
    [self addChildViewController:cvc5];
    
    cvc6 = [[cowViewController alloc] init];
    cvc6.tag = [NSNumber numberWithInt:6];
    [self addChildViewController:cvc6];
    
    fvc = [[farmerViewController alloc] init];
    fvc.tag = [NSNumber numberWithInt:7];
    [self addChildViewController:fvc];
    
    copVC = [[copViewController alloc] init];
    copVC.tag = [NSNumber numberWithInt:8];
    [self addChildViewController:copVC];
    
    /*hvc = [[humanViewController alloc] init];
    [self addChildViewController:hvc];*/
    
    clockHolder = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 100, 50)];
    tvc = [[timeClock alloc] init];
    // 7 is the maximum value timerTimeAllocation is designed to hold
    tvc.timerTimeAllocation = 7;
    
    evc = [[effects alloc] init];
    [self addChildViewController:evc];
    
    scoreHolder = [[UIView alloc] initWithFrame:CGRectMake(350, 15, 120, 50)];
    svc = [[scoreKeeper alloc] init];
    [self addChildViewController:svc];
    
    fView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, 480 + self.sizing, 320)];
    bView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, 480 + self.sizing, 320)];
    dView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, 480 + self.sizing, 320)];
    foregroundView *myView = [[foregroundView alloc] initWithFrame:CGRectMake(0, 0, 8000, 320)];
    foregroundView *mySecondView = [[foregroundView alloc] initWithFrame:CGRectMake(8000, 0, 8000, 320)];
    foregroundView *myThirdView = [[foregroundView alloc] initWithFrame:CGRectMake(16000, 0, 8000, 320)];
    backgroundView *myOtherView = [[backgroundView alloc] initWithFrame:CGRectMake(0, 0, 3000, 320)];
    distance *dist = [[distance alloc] initWithFrame:CGRectMake(0, 0, 1000, 320)];
    
    ufoHolder = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 130, 60)];
    ufoHolder.clipsToBounds = NO;
    UIView *ufoBacking = [[UIView alloc] initWithFrame:CGRectMake(200, 50, 130, 60)];
    ufoBoundingBox = CGRectMake(210, 60, 120, 50);
    ufoBacking.clipsToBounds = NO;
    
    
    /*humanHolder = [[UIView alloc] initWithFrame:CGRectMake(100, 240, 50, 60)];
    humanHolder.clipsToBounds = NO;*/
    
    farmerHolder = [[UIView alloc] initWithFrame:CGRectMake(1000, 240, 50, 60)];
    farmerHolder.tag = 7;
    farmerHolder.clipsToBounds = NO;
    
    copHolder = [[UIView alloc] initWithFrame:CGRectMake(1300, 240, 50, 60)];
    copHolder.tag = 8;
    copHolder.clipsToBounds = NO;
    
    cowHolder = [[UIView alloc] initWithFrame:CGRectMake(800, 240, 55, 65)];
    cowHolder.tag = 1;
    cowHolder.clipsToBounds = NO;
    
    cowHolder2 = [[UIView alloc] initWithFrame:CGRectMake(2000, 240, 55, 65)];
    cowHolder2.tag = 2;
    cowHolder2.clipsToBounds = NO;
    
    cowHolder3 = [[UIView alloc] initWithFrame:CGRectMake(2400, 240, 55, 65)];
    cowHolder3.tag = 3;
    cowHolder3.clipsToBounds = NO;
    
    cowHolder4 = [[UIView alloc] initWithFrame:CGRectMake(3000, 240, 55, 65)];
    cowHolder4.tag = 4;
    cowHolder4.clipsToBounds = NO;
    
    cowHolder5 = [[UIView alloc] initWithFrame:CGRectMake(5000, 240, 55, 65)];
    cowHolder5.tag = 5;
    cowHolder5.clipsToBounds = NO;
    
    cowHolder6 = [[UIView alloc] initWithFrame:CGRectMake(10000, 240, 55, 65)];
    cowHolder6.tag = 6;
    cowHolder6.clipsToBounds = NO;

    fView.backgroundColor = [UIColor clearColor];
    fView.userInteractionEnabled = YES;
    fView.delegate = self;
    fView.scrollEnabled = YES;
    fView.contentSize = CGSizeMake(24000, 320);
    fView.bounces = NO;
    fView.showsHorizontalScrollIndicator = NO;
    fView.showsVerticalScrollIndicator = NO;
    fView.decelerationRate = UIScrollViewDecelerationRateFast;
    
    bView.backgroundColor = [UIColor clearColor];
    bView.userInteractionEnabled = NO;
    bView.scrollEnabled = NO;
    bView.contentSize = CGSizeMake(3000, 320);
    bView.bounces = NO;
    bView.showsHorizontalScrollIndicator = NO;
    bView.showsVerticalScrollIndicator = NO;
    
    dView.backgroundColor = [UIColor clearColor];
    dView.userInteractionEnabled = NO;
    dView.scrollEnabled = NO;
    dView.contentSize = CGSizeMake(3000, 320);
    dView.bounces = NO;
    dView.showsHorizontalScrollIndicator = NO;
    dView.showsVerticalScrollIndicator = NO;
    
    [self.view addSubview:dView];
    [dView addSubview:dist];
    
    [self.view addSubview:clockHolder];
    [self addChildViewController:tvc];
    [clockHolder addSubview:tvc.view];
    [self.view addSubview:scoreHolder];
    [scoreHolder addSubview:svc.view];
    
    [self.view addSubview:bView];
    [bView addSubview:myOtherView];
    
    [self.view addSubview:ufoBacking];
 
    [ufoBacking addSubview:ufoHolder];
    [ufoHolder addSubview:uvc.view];
    //[humanHolder addSubview:hvc.view];
    [cowHolder addSubview:cvc.view];
    [cowHolder2 addSubview:cvc2.view];
    [cowHolder3 addSubview:cvc3.view];
    [cowHolder4 addSubview:cvc4.view];
    [cowHolder5 addSubview:cvc5.view];
    [cowHolder6 addSubview:cvc6.view];
    [farmerHolder addSubview:fvc.view];
    [copHolder addSubview:copVC.view];
    
    [self.view addSubview:fView];
    

    [fView addSubview:myView];
    [fView addSubview:mySecondView];
    [fView addSubview:myThirdView];
    
    //[fView addSubview:humanHolder];
    [fView addSubview:cowHolder];
    [fView addSubview:cowHolder2];
    [fView addSubview:cowHolder3];
    [fView addSubview:cowHolder4];
    [fView addSubview:cowHolder5];
    [fView addSubview:cowHolder6];
    [fView addSubview:farmerHolder];
    [fView addSubview:copHolder];
    
    [fView addSubview:evc.view];
    
    cvc.currentState = passive;
    [cvc updateCurrentState];
    cvc2.currentState = passive;
    [cvc2 updateCurrentState];
    cvc3.currentState = passive;
    [cvc3 updateCurrentState];
    cvc4.currentState = passive;
    [cvc4 updateCurrentState];
    cvc5.currentState = passive;
    [cvc5 updateCurrentState];
    cvc6.currentState = passive;
    [cvc6 updateCurrentState];
    fvc.currentState = passive;
    [fvc updateCurrentState];
    copVC.currentState = passive;
    [copVC updateCurrentState];
    
    CABasicAnimation *floatingAnimation = [CABasicAnimation animationWithKeyPath:@"transform"];
    floatingAnimation.duration = 4.5;
    floatingAnimation.repeatCount = INFINITY;
    floatingAnimation.fromValue = 0;
    floatingAnimation.autoreverses = YES;
    floatingAnimation.toValue = [NSNumber numberWithInt:15];
    floatingAnimation.valueFunction = [CAValueFunction functionWithName:kCAValueFunctionTranslateY];
    [ufoBacking.layer addAnimation:floatingAnimation forKey:@"transform"];
    
    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(walkingChildViewController:) name:@"isWalking" object:nil];
    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(abductingChildViewController:) name:@"isAbducting" object:nil];
    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(abductionHappened:) name:@"abductionHappened" object:nil];
    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(effectCalledByNotification:) name:@"effectCalled" object:nil];
    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(timeUp) name:@"timeUp" object:nil];
    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(update) name:@"tick" object:nil];

    [super viewDidLoad];
    
    press = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(gravityBeam)];
    press.cancelsTouchesInView = YES;
    [fView addGestureRecognizer:press];
    
    timeOp.characterArray = [[NSMutableArray alloc] init];
    [timeOp.characterArray addObject:cvc];
    [timeOp.characterArray addObject:cvc2];
    [timeOp.characterArray addObject:cvc3];
    [timeOp.characterArray addObject:cvc4];
    [timeOp.characterArray addObject:cvc5];
    [timeOp.characterArray addObject:cvc6];
    [timeOp.characterArray addObject:fvc];
    [timeOp.characterArray addObject:copVC];
    
}

# pragma mark - UFO movement methods -

- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView{
    isMoving = YES;
}

-(void)scrollViewDidScroll:(UIScrollView *)scrollView{
    uvc.xPosition = fView.contentOffset.x + 284;
    
    CGPoint bOffset;
    CGPoint dOffset;
    bOffset.x = fView.contentOffset.x;
    bOffset.x /= 5;
    bOffset.y = 0;
    bView.contentOffset = bOffset;
    dOffset.x = fView.contentOffset.x;
    dOffset.x /= 20;
    dOffset.y = 0;
    dView.contentOffset = dOffset;
    
   
    if (isAdusting == NO && isMoving == YES) {
    
        if (self.lastContentOffset > fView.contentOffset.x) {
            [uvc goLeft];
            [UIView animateWithDuration:1.5 delay:0 options:UIViewAnimationOptionBeginFromCurrentState animations:^{
                ufoHolder.center = CGPointMake(-35, 30);
            } completion:^(BOOL finished) {}];
        }
        
        if (self.lastContentOffset < fView.contentOffset.x) {
            [uvc goRight];
            [UIView animateWithDuration:1.5 delay:0 options:UIViewAnimationOptionBeginFromCurrentState animations:^{
                ufoHolder.center = CGPointMake(165, 30);
            } completion:^(BOOL finished) {}];
        }
    }
    
    self.lastContentOffset = fView.contentOffset.x;
    self.distance++;
}

- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView{
    if (self.distance <= 50) {
        [uvc stop];
        [UIView animateWithDuration:.7 delay:0 options:UIViewAnimationOptionBeginFromCurrentState animations:^{
            ufoHolder.center = CGPointMake(65, 30);
        } completion:^(BOOL finished) {}];

    }
    if (self.distance > 50 && self.distance <=100) {
        if (self.stoppingOffset > fView.contentOffset.x) {
            [uvc leftSlow];
            [UIView animateWithDuration:.7 delay:0 options:UIViewAnimationOptionBeginFromCurrentState | UIViewAnimationOptionCurveEaseOut animations:^{
                isAdusting = YES;
                ufoHolder.center = CGPointMake(-35, 30);
            } completion:^(BOOL finished) {
                [UIView animateWithDuration:.7 delay:0 options:UIViewAnimationOptionBeginFromCurrentState animations:^{
                    isAdusting = YES;
                    ufoHolder.center = CGPointMake(65, 30);
                } completion:^(BOOL finished) {}];
                isAdusting = NO;
            }];
        }
        if (self.stoppingOffset < fView.contentOffset.x) {
            [uvc rightSlow];
            [UIView animateWithDuration:.7 delay:0 options:UIViewAnimationOptionBeginFromCurrentState | UIViewAnimationOptionCurveEaseOut animations:^{
                isAdusting = YES;
                ufoHolder.center = CGPointMake(165, 30);
            } completion:^(BOOL finished) {
                [UIView animateWithDuration:.7 delay:0 options:UIViewAnimationOptionBeginFromCurrentState animations:^{
                    isAdusting = YES;
                    ufoHolder.center = CGPointMake(65, 30);
                } completion:^(BOOL finished) {}];
                isAdusting = NO;
            }];
        }
    }
    if (self.distance > 101 && self.distance <= 150) {
        if (self.stoppingOffset > fView.contentOffset.x) {
            [uvc leftStop];
            [UIView animateWithDuration:.7 delay:0 options:UIViewAnimationOptionBeginFromCurrentState | UIViewAnimationOptionCurveEaseOut animations:^{
                isAdusting = YES;
                ufoHolder.center = CGPointMake(-85, 30);
            } completion:^(BOOL finished) {
                [UIView animateWithDuration:.7 delay:0 options:UIViewAnimationOptionBeginFromCurrentState animations:^{
                    isAdusting = YES;
                    ufoHolder.center = CGPointMake(65, 30);
                } completion:^(BOOL finished) {}];
                isAdusting = NO;
            }];
        }
        if (self.stoppingOffset < fView.contentOffset.x) {
            [uvc rightStop];
            [UIView animateWithDuration:.7 delay:0 options:UIViewAnimationOptionBeginFromCurrentState | UIViewAnimationOptionCurveEaseOut animations:^{
                isAdusting = YES;
                ufoHolder.center = CGPointMake(215, 30);
            } completion:^(BOOL finished) {
                [UIView animateWithDuration:.7 delay:0 options:UIViewAnimationOptionBeginFromCurrentState animations:^{
                    isAdusting = YES;
                    ufoHolder.center = CGPointMake(65, 30);
                } completion:^(BOOL finished) {}];
                isAdusting = NO;
            }];
        }
    }
    if (self.distance > 151) {
        if (self.stoppingOffset > fView.contentOffset.x) {
            [uvc hardLeftStop];
            [UIView animateWithDuration:.7 delay:0 options:UIViewAnimationOptionBeginFromCurrentState | UIViewAnimationOptionCurveEaseOut animations:^{
                isAdusting = YES;
                ufoHolder.center = CGPointMake(-135, 30);
            } completion:^(BOOL finished) {
                [UIView animateWithDuration:.7 delay:0 options:UIViewAnimationOptionBeginFromCurrentState animations:^{
                    isAdusting = YES;
                    ufoHolder.center = CGPointMake(65, 30);
                } completion:^(BOOL finished) {}];
                isAdusting = NO;
            }];
        }
        if (self.stoppingOffset < fView.contentOffset.x) {
            [uvc hardRightStop];
            [UIView animateWithDuration:.7 delay:0 options:UIViewAnimationOptionBeginFromCurrentState | UIViewAnimationOptionCurveEaseOut animations:^{
                isAdusting = YES;
                ufoHolder.center = CGPointMake(265, 30);
            } completion:^(BOOL finished) {
                [UIView animateWithDuration:.7 delay:0 options:UIViewAnimationOptionBeginFromCurrentState animations:^{
                    isAdusting = YES;
                    ufoHolder.center = CGPointMake(65, 30);
                } completion:^(BOOL finished) {}];
                isAdusting = NO;
            }];
        }
    }

    isMoving = NO;
    self.stoppingOffset = fView.contentOffset.x;
    self.distance = 0;
}

- (void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate{
    //this method exists to avoid animation glitches
    if (fView.isDecelerating != YES) {
        [uvc stop];
        [UIView animateWithDuration:1.5 delay:.5 options:UIViewAnimationOptionBeginFromCurrentState animations:^{
            ufoHolder.center = CGPointMake(65, 30);
            } completion:^(BOOL finished) {}];
    }
 
}

# pragma mark - Miscellaneous -

- (IBAction)segue:(id)sender{
    [self performSegueWithIdentifier:@"segue1" sender:self];
}

- (void)update{
    uvc.xPosition = [ufoHolder.layer.presentationLayer position].x + fView.contentOffset.x + 200;
    ufoBoundingBox.origin.x = uvc.xPosition - 60;
    
    [timeOp update:uvc.xPosition :ufoBoundingBox];
    timeOp.ufoDamage = uvc.damage;
    //code to update character view controllers is on timeOp
  }

- (void)didReceiveMemoryWarning
{
    // should use viewWillAppear/ viewWillDisappear instead...
    //[[NSNotificationCenter defaultCenter] removeObserver:self];
    //can also create a methiod inside timerOperation that invalidates the timer. It'll be called from the view controller's deconstructor method.
    [super didReceiveMemoryWarning];
    
    // Dispose of any resources that can be recreated.
}

- (void)timeUp{
    self.view.userInteractionEnabled = NO;
    fView.userInteractionEnabled = NO;
    fView.scrollEnabled = NO;
}

#pragma mark - Character movement methods -

- (void)walkingChildViewController:(NSNotification *)notification{
    NSNumber *moveDuration = [[notification userInfo] objectForKey:@"k1"];
    NSNumber *tag = [[notification userInfo] objectForKey:@"k2"];
    NSNumber *facing = [[notification userInfo] objectForKey:@"k3"];
    for (characterViewController *charaVC in timeOp.characterArray) {
        if (tag.intValue == charaVC.tag.intValue) {
            [UIView animateWithDuration:moveDuration.unsignedIntValue delay:0 options:UIViewAnimationOptionBeginFromCurrentState |  UIViewAnimationOptionAllowUserInteraction animations:^{
                    charaVC.view.superview.center = CGPointMake(charaVC.view.superview.center.x + 50 * facing.floatValue, charaVC.view.superview.center.y);
            } completion:nil];
        }
    }
    notification = nil;
    tag = nil;
    moveDuration = nil;
    facing = nil;
}

- (void)abductingChildViewController:(NSNotification *)notification{
    NSNumber *tag = [[notification userInfo] objectForKey:@"k1"];
    //this will need to be updated for each copy of the level view controller
    if (tag.floatValue < 7) {
        timeOp.isAbductingCow = YES;
    }else{
        timeOp.isAbductingHuman = YES;
    }
    for (characterViewController *charaVC in timeOp.characterArray) {
        if (tag.intValue == charaVC.tag.intValue) {
            [charaVC panic];
            [UIView animateWithDuration:5 delay:0 options:UIViewAnimationOptionCurveEaseIn | UIViewAnimationOptionBeginFromCurrentState animations:^{
                charaVC.view.superview.center = CGPointMake(uvc.xPosition, 85);
            } completion:^(BOOL finished) {}];
        }
        NSLog(@"%f", charaVC.tag.floatValue);
        NSLog(@"%f", tag.floatValue);
    }
    notification = nil;
    tag = nil;
}

- (void)abductionHappened:(NSNotification *)notification{
    NSNumber *behavior = [[notification userInfo] objectForKey:@"k1"];
    if (behavior.intValue > 0) {
        [uvc reject];
        [uvc takeDamage];
        [self gravityBeamEnd];
    }
    else{
        [uvc abduct];
        [svc incrementScore];
    }
}

- (void)effectCalledByNotification:(NSNotification *)notification{
    effectClass *effect = [[notification userInfo] objectForKey:@"k1"];
    switch (effect.type) {
        case alert:
            [evc exclaimationEffect:effect.startPoint];
            break;
            
        case debris:
            [evc debrisEffect:effect.startPoint];
            break;
            
        case anger:
            [evc angerEffect:effect.startPoint];
            break;
            
        case bullet:
            [evc bulletEffect:effect.startPoint :effect.endPoint];
            break;
            
        case smoke:
            [evc smokeEffect:effect.startPoint];
            break;
            
        case sparks:
            [evc sparkEffect:effect.startPoint :effect.leftRight];
            [uvc takeDamage];
            [uvc incrementDamage];
            break;
            
        case music:
            [evc musicEffect:effect.startPoint];
            break;
            
        default:
            break;
    }
    effect = nil;
    notification = nil;
}

# pragma mark - Gravity Beam methods -

- (void)gravityBeam{
    if (uvc.cantAbduct == NO) {
    
    CGPoint location = [press locationInView:fView];
    CGPoint location2 = [press locationInView:self.view];
    float rotation = atanf((location.x - uvc.xPosition)/(location.y - [ufoHolder.layer.presentationLayer position].y));
    
    if (CGRectContainsPoint(playArea, location)) {
        
    if (press.state == UIGestureRecognizerStateBegan){
        
        //uvc.gravityBeamOn = YES;
        timeOp.gravityBeamOn = YES;
        gravityBeamLocation = CGRectMake(location.x - 50, 0 , 100, INFINITY);
        timeOp.gravityBeamLocation = gravityBeamLocation;
    
    [UIView animateWithDuration:1 delay:0 options:UIViewAnimationOptionBeginFromCurrentState animations:^{
        ufoHolder.transform = CGAffineTransformMakeRotation(-rotation);
    } completion:nil];
        //possible memory leak here
        
        CAEmitterLayer *emitter = [self gravityBeamEffects:rotation :location2];
        CAEmitterLayer *emitter2 = [self gravityBeamEffects2:rotation :location2];
        
        UIView *v = [[UIView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height)];
        v.tag = 1555;
        [v.layer addSublayer:emitter];
        [v.layer addSublayer:emitter2];
        [self.view addSubview:v];
        
    }}}
    
    if (press.state == UIGestureRecognizerStateFailed || press.state == UIGestureRecognizerStateEnded) {
        [self gravityBeamEnd];
    }
}

- (void)gravityBeamEnd{
    
    timeOp.isAbductingHuman = NO;
    timeOp.isAbductingCow = NO;
    
        [UIView animateWithDuration:1 delay:0 options:UIViewAnimationOptionBeginFromCurrentState animations:^{
            ufoHolder.transform = CGAffineTransformMakeRotation(0);
        } completion:nil];
        
        timeOp.gravityBeamOn = NO;
        CGRectIsNull(timeOp.gravityBeamLocation);
        
        [UIView animateWithDuration:.2 delay:0 options:UIViewAnimationOptionBeginFromCurrentState animations:^{
            [self.view viewWithTag:1555].alpha = 0;
        } completion:^(BOOL finished) {
            [[self.view viewWithTag:1555] removeFromSuperview];
        }];
        for (characterViewController *charaVC in timeOp.characterArray) {
            if (charaVC.currentState == abducting) {
                [timeOp fallingChildViewController:charaVC.view.superview];
            }
    }
}

- (CAEmitterLayer *)gravityBeamEffects: (float)rotation : (CGPoint)point{
    UIGraphicsBeginImageContextWithOptions(CGSizeMake(100,30), NO, 0);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(context, 2);
    CGContextSetShadowWithColor(context, CGSizeZero, 3, [[UIColor magentaColor]CGColor]);
    CGContextSetFillColorWithColor(context, [[UIColor magentaColor]CGColor]);
    CGContextSetStrokeColorWithColor(context, [[UIColor magentaColor]CGColor]);
    CGContextMoveToPoint(context, 3, 15 + (rotation * 50));
    CGContextAddQuadCurveToPoint(context, 50, 25, 94, 15 - (rotation * 50));
    CGContextStrokePath(context);
    UIImage *cellImage = UIGraphicsGetImageFromCurrentImageContext();
    CFRelease(context);
    
    CAEmitterCell *cell = [CAEmitterCell emitterCell];
    cell.emissionLongitude = - M_PI_2 - atanf((point.x - 265)/(point.y - 80));
    cell.scaleSpeed = -.2;
    cell.birthRate = 1;
    cell.lifetime = 2 + ABS(rotation);
    cell.velocity = 80;
    cell.contents = (id)cellImage.CGImage;
    cellImage = nil;
    
    CAEmitterLayer *emitter = [CAEmitterLayer new];
    emitter.emitterPosition = CGPointMake(point.x,point.y);
    emitter.seed = rand();
    emitter.emitterShape = kCAEmitterLayerCircle;
    emitter.emitterMode = kCAEmitterLayerVolume;
    emitter.emitterSize = CGSizeMake(10, 1);
    emitter.emitterCells = @[cell];
    
    return emitter;
}

- (CAEmitterLayer *)gravityBeamEffects2: (float)rotation : (CGPoint)point{
    UIGraphicsBeginImageContextWithOptions(CGSizeMake(6,6), NO, 0);
    CGContextRef context1 = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(context1, 1);
    CGContextSetStrokeColorWithColor(context1, [[UIColor cyanColor]CGColor]);
    CGContextSetFillColorWithColor(context1, [[UIColor cyanColor]CGColor]);
    CGContextSetShadowWithColor(context1, CGSizeMake(0, 0), 3, [[UIColor cyanColor]CGColor]);
    CGContextAddEllipseInRect(context1, CGRectMake(2, 2, 2, 2));
    CGContextFillPath(context1);
    UIImage* debris = UIGraphicsGetImageFromCurrentImageContext();
    CFRelease(context1);
    
    CAEmitterCell *cell = [CAEmitterCell emitterCell];
    cell.emissionLongitude = - M_PI_2 - atanf((point.x - 265)/(point.y - 80));
    cell.emissionRange = .50;
    cell.alphaSpeed = -.3;
    cell.scaleRange = .5;
    cell.velocityRange = 15;
    cell.birthRate = 5;
    cell.lifetime = 3 + ABS(rotation);
    cell.velocity = 20;
    cell.contents = (id)debris.CGImage;
    debris = nil;
    
    CAEmitterLayer *emitter = [CAEmitterLayer new];
    emitter.emitterPosition = CGPointMake(point.x,290);
    emitter.seed = rand();
    emitter.emitterShape = kCAEmitterLayerRectangle;
    emitter.emitterMode = kCAEmitterLayerVolume;
    emitter.emitterSize = CGSizeMake(100, 1);
    emitter.emitterCells = @[cell];
    
    return emitter;
}

@end
