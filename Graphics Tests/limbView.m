//
//  limbView.m
//  Graphics Tests
//
//  Created by DM on 2/28/13.
//  Copyright (c) 2013 DM. All rights reserved.
//

#import "limbView.h"

@implementation armView

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
    CGContextSetLineWidth(context, 1);
    CGContextSetStrokeColorWithColor(context, [[UIColor yellowColor]CGColor]);
    CGContextSetShadowWithColor(context, CGSizeMake(0, 0), 3, [[UIColor yellowColor]CGColor]);
    
    CGContextMoveToPoint(context, 3, 3);
    CGContextAddLineToPoint(context, 3, 15);
    CGContextAddQuadCurveToPoint(context, 0, 7, 3, 3);
    
    CGContextStrokePath(context);
}


@end

@implementation legView

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
     CGContextSetLineWidth(context, 1);
     CGContextSetStrokeColorWithColor(context, [[UIColor yellowColor]CGColor]);
     CGContextSetShadowWithColor(context, CGSizeMake(0, 0), 3, [[UIColor yellowColor]CGColor]);
     
     CGContextMoveToPoint(context, 3, 3);
     CGContextAddLineToPoint(context, 3, 15);
     CGContextAddQuadCurveToPoint(context, 2, 7, 3, 3);
     CGContextAddQuadCurveToPoint(context, 4, 4, 3, 15);
    
     CGContextStrokePath(context);
 }
 

@end