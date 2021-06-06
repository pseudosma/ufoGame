//
//  reporterViewController.h
//  Graphics Tests
//
//  Created by DM on 8/4/13.
//  Copyright (c) 2013 DM. All rights reserved.
//

#import "humanViewController.h"
#import "objects.h"
#import "reporterView.h"

@interface reporterViewController : humanViewController{
    newspaperView *paper;
    cigarette *cigs;
    yoyoView *yoyo;
    cameraView *camera;
}

- (void)flair1;
- (void)flair2;
- (void)flair3;
- (void)attack:(CGPoint) target;

@end