//
//  copView.m
//  Graphics Tests
//
//  Created by DM on 7/21/13.
//  Copyright (c) 2013 DM. All rights reserved.
//

#import "copView.h"

@implementation copHatView

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
    CGContextSetStrokeColorWithColor(context, [[UIColor yellowColor]CGColor]);
    CGContextSetShadowWithColor(context, CGSizeZero, 3, [[UIColor yellowColor]CGColor]);
    CGContextSetFillColorWithColor(context, [[UIColor yellowColor]CGColor]);

    CGContextMoveToPoint(context, 3, 10);
    CGContextAddQuadCurveToPoint(context, 7, 12, 18, 10);
    CGContextAddLineToPoint(context, 19, 8);
    CGContextAddQuadCurveToPoint(context, 11, 3, 5, 5);
    CGContextAddLineToPoint(context, 6, 8);
    CGContextAddQuadCurveToPoint(context, 4.5, 7.5, 3, 10);
    CGContextFillPath(context);
    CGContextSetFillColorWithColor(context, [[UIColor blackColor]CGColor]);
    CGContextMoveToPoint(context, 8, 8);
    CGContextAddLineToPoint(context, 12, 8);
    CGContextAddQuadCurveToPoint(context, 10, 5, 8, 8);
    CGContextFillPath(context);
}

@end

@implementation copUniformBody

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
    CGContextSetStrokeColorWithColor(context, [[UIColor yellowColor]CGColor]);
    CGContextSetShadowWithColor(context, CGSizeZero, 3, [[UIColor yellowColor]CGColor]);
    CGContextSetFillColorWithColor(context, [[UIColor yellowColor]CGColor]);
    
    CGContextMoveToPoint(context, 4, 3);
    CGContextAddLineToPoint(context, 3, 26);
    CGContextAddLineToPoint(context, 15, 26);
    CGContextAddLineToPoint(context, 14, 3);
    CGContextAddLineToPoint(context, 4, 3);
    CGContextFillPath(context);
    CGContextSetLineWidth(context, 2);
    CGContextSetStrokeColorWithColor(context, [[UIColor blackColor]CGColor]);
    CGContextMoveToPoint(context, 3.5, 17);
    CGContextAddQuadCurveToPoint(context, 9, 18, 14, 17);
    CGContextAddQuadCurveToPoint(context, 4, 6, 4, 3);
    CGContextStrokePath(context);
}

@end

@implementation copUniformSleeve

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
    CGContextSetStrokeColorWithColor(context, [[UIColor yellowColor]CGColor]);
    CGContextSetShadowWithColor(context, CGSizeZero, 3, [[UIColor yellowColor]CGColor]);
    CGContextSetFillColorWithColor(context, [[UIColor yellowColor]CGColor]);
    
    CGContextAddRect(context, CGRectMake(3, 3, 3, 13));
    CGContextFillPath(context);
    CGContextSetLineWidth(context, 1);
    CGContextSetStrokeColorWithColor(context, [[UIColor blackColor]CGColor]);
    CGContextMoveToPoint(context, 3, 12);
    CGContextAddLineToPoint(context, 6, 12);
    CGContextStrokePath(context);
}

@end

@implementation copUniformPantLeg

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
    CGContextSetStrokeColorWithColor(context, [[UIColor yellowColor]CGColor]);
    CGContextSetShadowWithColor(context, CGSizeZero, 3, [[UIColor yellowColor]CGColor]);
    CGContextSetFillColorWithColor(context, [[UIColor yellowColor]CGColor]);
    
    CGContextAddRect(context, CGRectMake(3, 3, 3, 15));
    CGContextFillPath(context);
}

@end
