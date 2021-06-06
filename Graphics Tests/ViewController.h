//
//  ViewController.h
//  Graphics Tests
//
//  Created by DM on 2/17/13.
//  Copyright (c) 2013 DM. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "myView.h"
#import "foregroundView.h"
#import "backgroundView.h"
#import "distance.h"
#import "characterView.h"
#import "gameViewController.h"
#import "humanViewController.h"
#import "farmerViewController.h"
#import "copViewController.h"
#import "UFOViewController.h"
#import "cowViewController.h"
#import "timeClock.h"
#import "effects.h"
#import "scoreKeeper.h"
#import "timerOperation.h"

@interface ViewController : gameViewController <UIScrollViewDelegate, UIGestureRecognizerDelegate>
{
    
    //humanViewController *hvc;
    farmerViewController *fvc;
    copViewController *copVC;
    cowViewController *cvc;
    cowViewController *cvc2;
    cowViewController *cvc3;
    cowViewController *cvc4;
    cowViewController *cvc5;
    cowViewController *cvc6;
    UFOViewController *uvc;
    timeClock *tvc;
    effects *evc;
    scoreKeeper *svc;
    
    UIView *ufoHolder;
    //UIView *humanHolder;
    UIView *farmerHolder;
    UIView *copHolder;
    UIView *cowHolder;
    UIView *cowHolder2;
    UIView *cowHolder3;
    UIView *cowHolder4;
    UIView *cowHolder5;
    UIView *cowHolder6;
    UIView *clockHolder;
    UIView *scoreHolder;
    
    UIScrollView *fView;
    UIScrollView *bView;
    UIScrollView *dView;
    //these BOOLs prevent certain animation glitches
    BOOL isAdusting;
    BOOL isMoving;
    
    CGRect ufoBoundingBox;
    CGRect playArea;
    
    timerOperation *timeOp;
    
    UILongPressGestureRecognizer *press;
}

- (IBAction)segue:(id)sender;

@property (strong) NSOperationQueue *queue;

@property float lastContentOffset;
@property float distance;
@property float stoppingOffset;
@property CGRect gravityBeamLocation;

@end
