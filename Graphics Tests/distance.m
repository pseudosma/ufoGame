//
//  distance.m
//  Graphics Tests
//
//  Created by DM on 2/21/13.
//  Copyright (c) 2013 DM. All rights reserved.
//

#import "distance.h"

@implementation distance

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
    }
    return self;
}
- (void)drawRect:(CGRect)rect
{
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetShadowWithColor(context, CGSizeMake(0, 0), 3, [[UIColor cyanColor]CGColor]);
    
    CGContextMoveToPoint(context, 0, 200);
    CGContextSetLineWidth(context, 2);
    CGContextSetRGBStrokeColor(context, 0, 0.68, 0.92, 0.25);
    
    CGContextAddLineToPoint(context, 1000, 200);
    CGContextMoveToPoint(context, 0, 0);
    CGContextAddLineToPoint(context, 1000, 200);
    CGContextStrokePath(context);

}


@end
