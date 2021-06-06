//
//  militaryViewController.h
//  Graphics Tests
//
//  Created by DM on 7/30/13.
//  Copyright (c) 2013 DM. All rights reserved.
//

#import "humanViewController.h"
#import "militaryView.h"
#import "objects.h"

@interface militaryViewController : humanViewController{
    rifleView *rifle;
    bazookaView *bazooka;
}

@property BOOL gernadeRampage;
@property BOOL bazookaRampage;

- (void)attack:(CGPoint) target;
- (void)superAttack:(CGPoint) target;
- (void)superMegaAttack:(CGPoint) target;


@end
