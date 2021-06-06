//
//  farmerViewController.h
//  Graphics Tests
//
//  Created by DM on 7/19/13.
//  Copyright (c) 2013 DM. All rights reserved.
//

#import "humanViewController.h"
#import "farmerView.h"
#import "objects.h"

@interface farmerViewController : humanViewController{
    hoeView *hoe;
    shotgunView *shotgun;
    seedView *seeds;
}

- (void)flair1;
- (void)flair2;
- (void)flair3;
- (void)attack:(CGPoint) target;

@end
