//
//  headView.m
//  Graphics Tests
//
//  Created by DM on 2/28/13.
//  Copyright (c) 2013 DM. All rights reserved.
//

#import "headView.h"

@implementation headView

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
    
    CGContextAddEllipseInRect(context, CGRectMake(3, 3, 12, 12));
    CGContextMoveToPoint(context, 3, 9);
    CGContextAddQuadCurveToPoint(context, 5, 15, 12, 12);
    CGContextAddQuadCurveToPoint(context, 20, 10, 9, 3);
    CGContextAddQuadCurveToPoint(context, 0, 0, 3, 9);
    CGContextAddQuadCurveToPoint(context, 0, 15, 9, 12);
    CGContextStrokePath(context);
}
@end

@implementation cowHeadView

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
    
    CGContextMoveToPoint(context, 3, 10);
    CGContextAddCurveToPoint(context, 8, 3, 12, 3, 17, 10);
    CGContextAddQuadCurveToPoint(context, 15, 15, 14, 20);
    CGContextAddQuadCurveToPoint(context, 10, 25, 6, 20);
    CGContextAddQuadCurveToPoint(context, 5, 15, 3, 10);
    CGContextMoveToPoint(context, 3, 10);
    CGContextAddCurveToPoint(context, 4, 8, 1, 7, 9, 3);
    CGContextAddCurveToPoint(context, 25, 10, 10, 18, 14, 20);
    CGContextAddQuadCurveToPoint(context, 10, 30, 6, 20);
    CGContextMoveToPoint(context, 3, 10);
    CGContextAddLineToPoint(context, 1, 12);
    CGContextMoveToPoint(context, 17, 10);
    CGContextAddLineToPoint(context, 19, 12);
    CGContextStrokePath(context);
 
}
@end

@implementation cowHeadView2

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
    CGContextSetFillColorWithColor(context, [[UIColor blackColor]CGColor]);
    
    CGContextMoveToPoint(context, 3, 10);
    CGContextAddCurveToPoint(context, 8, 3, 12, 3, 17, 10);
    CGContextAddQuadCurveToPoint(context, 15, 15, 14, 20);
    CGContextAddQuadCurveToPoint(context, 10, 25, 6, 20);
    CGContextAddQuadCurveToPoint(context, 5, 15, 3, 10);
    CGContextFillPath(context);
    
}
@end


