//
//  femaleFBIViewController.h
//  Graphics Tests
//
//  Created by DM on 8/7/13.
//  Copyright (c) 2013 DM. All rights reserved.
//

#import "humanViewController.h"
#import "objects.h"
#import "femaleFBIView.h"

@interface femaleFBIViewController : humanViewController{

    femaleFBISkirtView *skirt;
    handgunView *gun;
    newspaperView *paper;
    yoyoView *yoyo;
    walkieTalkieView *walkie;
}

- (void)flair1;
- (void)flair2;
- (void)flair3;
- (void)attack:(CGPoint) target;
- (void)callBackup;

@end
