//
//  FBIViewController.h
//  Graphics Tests
//
//  Created by DM on 7/28/13.
//  Copyright (c) 2013 DM. All rights reserved.
//

#import "humanViewController.h"
#import "FBIView.h"
#import "objects.h"

@interface FBIViewController : humanViewController{
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
