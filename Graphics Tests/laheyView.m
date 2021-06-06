//
//  laheyView.m
//  Graphics Tests
//
//  Created by DM on 8/4/13.
//  Copyright (c) 2013 DM. All rights reserved.
//

#import "laheyView.h"

@implementation laheyGlassesView

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
    CGContextSetFillColorWithColor(context, [[UIColor yellowColor]CGColor]);
    CGContextSetShadowWithColor(context, CGSizeZero, 3, [[UIColor yellowColor]CGColor]);
    
    CGContextMoveToPoint(context, 8, 5);
    CGContextAddLineToPoint(context, 20, 5);
    CGContextMoveToPoint(context, 7, 4);
    CGContextAddQuadCurveToPoint(context, 4, 5, 4, 6);
    CGContextMoveToPoint(context, 20, 5);
    CGContextAddQuadCurveToPoint(context, 21.5, 1, 22, 2);
    CGContextMoveToPoint(context, 8, 3);
    CGContextAddQuadCurveToPoint(context, 3, 5, 3, 3);
    CGContextMoveToPoint(context, 9, 2);
    CGContextAddQuadCurveToPoint(context, 7, 1, 4, 0);
    CGContextMoveToPoint(context, 19, 6);
    CGContextAddQuadCurveToPoint(context, 22, 2, 23, 5);
    
    CGContextStrokePath(context);
    CGContextAddEllipseInRect(context, CGRectMake(9, 4, 3, 3));
    CGContextAddEllipseInRect(context, CGRectMake(14, 4, 3, 3));
    CGContextFillPath(context);
}

@end

@implementation laheyShirtView

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
    CGContextSetStrokeColorWithColor(context, [[UIColor blackColor]CGColor]);
    CGContextSetFillColorWithColor(context, [[UIColor yellowColor]CGColor]);
    CGContextSetShadowWithColor(context, CGSizeZero, 3, [[UIColor yellowColor]CGColor]);
    
    CGContextMoveToPoint(context, 4, 3);
    CGContextAddLineToPoint(context, 3, 26);
    CGContextAddLineToPoint(context, 15, 26);
    CGContextAddLineToPoint(context, 14, 3);
    CGContextAddLineToPoint(context, 4, 3);
    CGContextFillPath(context);
    CGContextMoveToPoint(context, 8.5, 3);
    CGContextAddLineToPoint(context, 8.5, 26);
    CGContextMoveToPoint(context, 4, 13);
    CGContextAddLineToPoint(context, 7, 12);
    CGContextMoveToPoint(context, 10, 12);
    CGContextAddLineToPoint(context, 13, 13);
    CGContextStrokePath(context);
}

@end

@implementation laheyShirtSleeveView

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
    CGContextSetFillColorWithColor(context, [[UIColor yellowColor]CGColor]);
    CGContextSetShadowWithColor(context, CGSizeZero, 3, [[UIColor yellowColor]CGColor]);
    
    CGContextMoveToPoint(context, 3, 5);
    CGContextAddLineToPoint(context, 4, 16);
    CGContextAddLineToPoint(context, 7, 16);
    CGContextAddLineToPoint(context, 7, 3);
    CGContextFillPath(context);
}


@end