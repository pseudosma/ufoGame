//
//  investigatorView.m
//  Graphics Tests
//
//  Created by DM on 8/4/13.
//  Copyright (c) 2013 DM. All rights reserved.
//

#import "investigatorView.h"

@implementation investigatorGlassesView

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
    
    CGContextMoveToPoint(context, 3, 3);
    CGContextAddLineToPoint(context, 15, 3);
    CGContextStrokePath(context);
    CGContextAddEllipseInRect(context, CGRectMake(4, 2, 3, 3));
    CGContextAddEllipseInRect(context, CGRectMake(9, 2, 3, 3));
    CGContextFillPath(context);
    CGContextSetFillColorWithColor(context, [[UIColor blackColor]CGColor]);
    CGContextMoveToPoint(context, 4, 8);
    CGContextAddLineToPoint(context, 12, 8);
    CGContextAddQuadCurveToPoint(context, 8, 2, 4, 8);
    CGContextFillPath(context);
}

@end

@implementation investigatorShirtView

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
    CGContextSetFillColorWithColor(context, [[UIColor blackColor]CGColor]);
    CGContextSetShadowWithColor(context, CGSizeZero, 3, [[UIColor yellowColor]CGColor]);
    
    CGContextAddRect(context, CGRectMake(3, 3, 11, 21));
    CGContextFillPath(context);
    CGContextAddRect(context, CGRectMake(3, 3, 11, 21));
    CGContextMoveToPoint(context, 8.5, 3);
    CGContextAddLineToPoint(context, 8.5, 24);
    CGContextAddEllipseInRect(context, CGRectMake(5, 5, 2, 2));
    CGContextAddEllipseInRect(context,CGRectMake(10, 8, 2, 2));
    CGContextAddEllipseInRect(context, CGRectMake(6, 13, 2, 2));
    CGContextAddEllipseInRect(context, CGRectMake(11, 19, 2, 2));
    CGContextStrokePath(context);
}

@end

@implementation investigatorShirtSleeveView

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
    CGContextSetFillColorWithColor(context, [[UIColor blackColor]CGColor]);
    
    CGContextMoveToPoint(context, 3, 5);
    CGContextAddLineToPoint(context, 3, 11);
    CGContextAddLineToPoint(context, 7, 11);
    CGContextAddLineToPoint(context, 7, 3);
    CGContextFillPath(context);
    CGContextSetShadowWithColor(context, CGSizeZero, 3, [[UIColor yellowColor]CGColor]);
    CGContextMoveToPoint(context, 3, 5);
    CGContextAddLineToPoint(context, 3, 11);
    CGContextAddLineToPoint(context, 7, 11);
    CGContextAddLineToPoint(context, 7, 3);
    CGContextAddEllipseInRect(context, CGRectMake(5, 7, 2, 2));
    CGContextStrokePath(context);
}

@end

@implementation investigatorShortsLegView

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
    
    CGContextAddRect(context, CGRectMake(3, 3, 5, 9));
    CGContextFillPath(context);
}

@end