//
//  copViewController.h
//  Graphics Tests
//
//  Created by DM on 7/21/13.
//  Copyright (c) 2013 DM. All rights reserved.
//

#import "humanViewController.h"
#import "copView.h"
#import "objects.h"

@interface copViewController : humanViewController{
    
    handgunView *gun;
    batonView *baton;
    whistleView *whistle;
    donutView *donut;
    
}

- (void)flair1;
- (void)flair2;
- (void)flair3;
- (void)attack:(CGPoint) target;

@end
