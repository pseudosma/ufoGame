//
//  mountieViewController.h
//  Graphics Tests
//
//  Created by DM on 8/1/13.
//  Copyright (c) 2013 DM. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "humanViewController.h"
#import "mountieView.h"
#import "objects.h"

@interface mountieViewController : humanViewController{
    handgunView *gun;
    batonView *baton;
}

- (void)flair1;
- (void)flair2;
- (void)flair3;
- (void)attack:(CGPoint) target;

@end
