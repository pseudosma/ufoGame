//
//  scoreKeeper.h
//  Graphics Tests
//
//  Created by DM on 6/8/13.
//  Copyright (c) 2013 DM. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>
#import "cowViewController.h"

@interface scoreKeeper : UIViewController{
    
    cowViewController *cowVC;
    UIView *cowPlaceHolder;
    
    UILabel *x;
    
    int value1;
    UILabel *p1;
    NSString *s1;
    
    int value2;
    UILabel *p2;
    NSString *s2;
}

- (void)incrementScore;

@property uint score;

@end
