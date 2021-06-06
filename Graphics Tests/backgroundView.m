//
//  backgroundView.m
//  Graphics Tests
//
//  Created by DM on 2/20/13.
//  Copyright (c) 2013 DM. All rights reserved.
//

#import "backgroundView.h"

@implementation backgroundView

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
    CGContextSetShadowWithColor(context, CGSizeMake(0, 0), 5, [[UIColor cyanColor]CGColor]);
    
    CGContextMoveToPoint(context, 0, 200);
    CGContextSetLineWidth(context, 2);
    CGContextSetRGBStrokeColor(context, 0, 0.68, 0.92, 0.5);
    
    CGContextAddLineToPoint(context, 3000, 250);
    CGContextMoveToPoint(context, 300, 100);
    CGContextAddLineToPoint(context, 3000, 250);
    CGContextStrokePath(context);

}


@end
