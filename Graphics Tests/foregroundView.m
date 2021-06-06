//
//  foregroundView.m
//  Graphics Tests
//
//  Created by DM on 2/20/13.
//  Copyright (c) 2013 DM. All rights reserved.
//

#import "foregroundView.h"

@implementation foregroundView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor clearColor];
    }
    return self;
}


- (void)drawRect:(CGRect)rect
{
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetShadowWithColor(context, CGSizeMake(0, 0), 10, [[UIColor cyanColor]CGColor]);

    CGContextMoveToPoint(context, 0, 280);
    CGContextSetLineWidth(context, 2);
    CGContextSetRGBStrokeColor(context, 0, 0.68, 0.92, 1.0);
    
    CGContextAddLineToPoint(context, 8000, 280);
    CGContextStrokePath(context);
}


@end
