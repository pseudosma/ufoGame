//
//  laheyViewController.h
//  Graphics Tests
//
//  Created by DM on 8/4/13.
//  Copyright (c) 2013 DM. All rights reserved.
//

#import "humanViewController.h"
#import "laheyView.h"
#import "objects.h"

@interface laheyViewController : humanViewController{
    handgunView *gun;
    liquorBottleView *liquor;
    cigarette *cigs;
    walkieTalkieView *walkie;
}

- (void)flair1;
- (void)flair2;
- (void)flair3;
- (void)attack:(CGPoint) target;
- (void)callBackup;

@end
