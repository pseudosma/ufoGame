//
//  investigatorViewController.h
//  Graphics Tests
//
//  Created by DM on 8/4/13.
//  Copyright (c) 2013 DM. All rights reserved.
//

#import "humanViewController.h"
#import "investigatorView.h"
#import "objects.h"

@interface investigatorViewController : humanViewController{
    
    handgunView *gun;
    newspaperView *paper;
    yoyoView *yoyo;
    cigarette *cigs;
}

- (void)flair1;
- (void)flair2;
- (void)flair3;
- (void)attack:(CGPoint) target;

@end
