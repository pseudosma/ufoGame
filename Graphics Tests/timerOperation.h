//
//  timerOperation.h
//  Graphics Tests
//
//  Created by DM on 7/13/13.
//  Copyright (c) 2013 DM. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "characterView.h"
#import "gameViewController.h"
#import "humanViewController.h"
#import "UFOViewController.h"
#import "cowViewController.h"
#import "effects.h"

@interface timerOperation : NSOperation{
    NSTimer *timer;
    int timeValue;
    CGRect ufoBoundingBox;
    float ufoXPosition;
    
    
}

@property (nonatomic, strong) NSMutableArray *characterArray;
@property (nonatomic) BOOL gravityBeamOn;
@property (nonatomic) BOOL isAbductingCow;
@property (nonatomic) BOOL isAbductingHuman;
@property (nonatomic) CGRect gravityBeamLocation;
@property (nonatomic) uint ufoDamage;


- (void)fallingChildViewController:(UIView *)view;
- (void)update: (float)fViewContentOffset :(CGRect)boundingBox;

@end
