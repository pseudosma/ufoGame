//
//  cowViewController.h
//  Graphics Tests
//
//  Created by DM on 3/2/13.
//  Copyright (c) 2013 DM. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>
#import "limbView.h"
#import "headView.h"
#import "bodyView.h"
#import "characterViewController.h"

@interface cowViewController : characterViewController{
    
    cowHeadView2 *head;
    cowBodyView *body;
    legView *lFLeg;
    legView *rFLeg;
    legView *lBLeg;
    legView *rBLeg;
}

- (void)stop;
- (void)walk;
- (void)panic;
- (void)run;
- (void)charge;
- (void)fall;
- (void)recover;
- (void)changeOrientation;
- (void)pause;
- (void)resume;
- (void)flair1;
- (void)flair2;
- (void)flair3;
- (void)updateCurrentState;

@end
