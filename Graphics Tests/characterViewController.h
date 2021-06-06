//
//  characterViewController.h
//  Graphics Tests
//
//  Created by DM on 6/10/14.
//  Copyright (c) 2014 DM. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "constants.h"
#import "effects.h"

@interface characterViewController : UIViewController{
    localTransforms localT;
    timing time;
    CGAffineTransform orientation;
}

@property (nonatomic , strong) NSNumber *moveDuration;
@property (nonatomic , strong) NSNumber *tag;
@property (nonatomic , strong) NSNumber *facing;

@property state currentState;
@property float xPosition;
@property relativeDistance rDistance;
@property int behaviorType;
@property CGRect visualField;
@property CGRect targetedArea;
@property BOOL didAttack;

/*
Behavior type guide:
 0 = Cow
 1 = Farmer
 2 = Cops, Mounties, Detectives, and Investigators
 3 = FBI Agents, Lahey, Reporters (maybe)
 4 = Military
 5 = Culties, Suicide Culties, and Conspirators
*/

//common methods shared by all characters
- (void)stop;
- (void)walk;
- (void)panic;
- (void)run;
- (void)panicRun;
- (void)fall;
- (void)recover;
- (void)changeOrientation;
- (void)pause;
- (void)resume;
- (void)flair1;
- (void)flair2;
- (void)flair3;
- (void)updateCurrentState;
//character specific methods
- (void)charge;
- (void)attack:(CGPoint) target;
- (void)superAttack:(CGPoint) target;
- (void)superMegaAttack:(CGPoint) target;
- (void)callBackup;


@end
