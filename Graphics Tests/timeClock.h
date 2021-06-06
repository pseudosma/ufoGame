//
//  timeClock.h
//  Graphics Tests
//
//  Created by DM on 4/4/13.
//  Copyright (c) 2013 DM. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

@interface timeClock : UIViewController{
    
    UIColor *color;
    
    int value1;
    NSString *v1;

    int value2;
    NSString *v2;
    
    int value3;
    NSString *v3;

    //NSTimer *t;
    int number;
    int timedValue;
}

@property (atomic,strong) UILabel *t1;
@property (atomic,strong) UILabel *colon;
@property (atomic,strong) UILabel *t2;
@property (atomic,strong) UILabel *t3;

@property int timerTimeAllocation;

@end
