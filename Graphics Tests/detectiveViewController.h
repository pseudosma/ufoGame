//
//  detectiveViewController.h
//  Graphics Tests
//
//  Created by DM on 10/5/13.
//  Copyright (c) 2013 DM. All rights reserved.
//

#import "humanViewController.h"
#import "detectiveView.h"
#import "objects.h"

@interface detectiveViewController : humanViewController{
    
    handgunView *gun;
    donutView *donut;
    cigarette *cigs;
    walkieTalkieView *walkie;
    newspaperView *paper;
    
}

- (void)flair1;
- (void)flair2;
- (void)flair3;
- (void)attack:(CGPoint) target;
- (void)callBackup;

@end
