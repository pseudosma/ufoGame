//
//  bodyView.m
//  Graphics Tests
//
//  Created by DM on 2/28/13.
//  Copyright (c) 2013 DM. All rights reserved.
//

#import "bodyView.h"

@implementation bodyView

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
    
    CGContextAddRect(context, CGRectMake(3, 3, 10, 20));
    CGContextMoveToPoint(context, 3, 13);
    CGContextAddQuadCurveToPoint(context, 3, 26, 13, 26);
    CGContextAddQuadCurveToPoint(context, 15, 3, 3, 3);
    CGContextAddQuadCurveToPoint(context, 6, 9, 3, 13);
    CGContextStrokePath(context);
}


@end

@implementation cowBodyView

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
    CGContextAddQuadCurveToPoint(context, -3, 33, 45, 33);
    CGContextAddQuadCurveToPoint(context, 60, 18, 53, 3);
    CGContextMoveToPoint(context, 3, 3);
    CGContextAddCurveToPoint(context, 15, -5, 32, 10, 53, 3);
    CGContextAddCurveToPoint(context, 50, -3, 40, 5, 3, 3);
    CGContextAddCurveToPoint(context, 10, 45, 55, 45, 53, 3);
    CGContextAddQuadCurveToPoint(context, 55, 20, 60, 25);
  
    CGContextStrokePath(context);
}


@end
