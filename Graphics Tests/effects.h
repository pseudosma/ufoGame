//
//  effects.h
//  Graphics Tests
//
//  Created by DM on 3/29/13.
//  Copyright (c) 2013 DM. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>
#import "constants.h"


@interface effects : UIViewController{

}

- (void)touchEvent: (CGPoint)point;

- (void)fireEffect: (CGPoint)point;
- (void)debrisEffect: (CGPoint)point;
- (void)exclaimationEffect: (CGPoint)point;
- (void)angerEffect: (CGPoint)point;
- (void)bulletEffect: (CGPoint)point :(CGPoint)ePoint;
- (void)smokeEffect: (CGPoint)point;
- (void)sparkEffect: (CGPoint)point :(int)leftRight;
- (void)musicEffect: (CGPoint)point;

@property int type;
@property int lR;
@property CGPoint startPoint;
@property CGPoint endPoint;


@end

@interface exclaimView : UIView

@end

@interface musicView : UIView

@end

@interface effectClass : NSObject
//this class is just a container for effects typedef
@property specialEffects type;
@property int leftRight;
@property CGPoint startPoint;
@property CGPoint endPoint;


@end
