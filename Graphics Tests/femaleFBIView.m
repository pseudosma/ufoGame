//
//  femaleFBIView.m
//  Graphics Tests
//
//  Created by DM on 8/7/13.
//  Copyright (c) 2013 DM. All rights reserved.
//

#import "femaleFBIView.h"

@implementation femaleFBIGlassesView

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
    
    CGContextMoveToPoint(context, 3, 20);
    CGContextAddQuadCurveToPoint(context, 5, 15, 6, 11);
    CGContextAddQuadCurveToPoint(context, 13, 0, 21, 11);
    CGContextAddQuadCurveToPoint(context, 22, 15, 24, 20);
    CGContextAddQuadCurveToPoint(context, 19, 14, 19, 12);
    CGContextAddLineToPoint(context, 8, 12);
    CGContextAddQuadCurveToPoint(context,8, 14, 3, 20);
    CGContextFillPath(context);
    CGContextMoveToPoint(context, 8, 14);
    CGContextAddLineToPoint(context, 19, 14);
    CGContextAddQuadCurveToPoint(context, 16.5, 17, 13.5, 14);
    CGContextAddQuadCurveToPoint(context, 10.5, 17, 8, 14);
    CGContextStrokePath(context);
    
}


@end

@implementation femaleFBIJacketView

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
    
    
    CGContextMoveToPoint(context, 6, 3);
    CGContextAddLineToPoint(context, 3, 16);
    CGContextAddQuadCurveToPoint(context, 9, 10, 9, 3);
    CGContextAddLineToPoint(context, 6, 3);
    CGContextMoveToPoint(context, 11, 3);
    CGContextAddQuadCurveToPoint(context, 11, 10, 17, 16);
    CGContextAddLineToPoint(context, 14, 3);
    CGContextAddLineToPoint(context, 11, 3);
    CGContextFillPath(context);
    CGContextSetShadowWithColor(context, CGSizeZero, 3, [[UIColor blackColor]CGColor]);
    CGContextMoveToPoint(context, 11, 3);
    CGContextAddQuadCurveToPoint(context, 11, 10, 17, 16);
    CGContextMoveToPoint(context, 3, 16);
    CGContextAddQuadCurveToPoint(context, 9, 10, 9, 3);
    CGContextStrokePath(context);
}

@end

@implementation femaleFBIJacketSleeveView

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
    
    CGContextAddRect(context, CGRectMake(3, 3, 3, 11));
    CGContextFillPath(context);
}

@end


@implementation femaleFBISkirtView

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
    
    CGContextMoveToPoint(context, 8, 3);
    CGContextAddLineToPoint(context, 3, 14);
    CGContextAddLineToPoint(context, 23, 14);
    CGContextAddLineToPoint(context, 18, 3);
    CGContextAddLineToPoint(context, 8, 3);
    CGContextFillPath(context);
}

@end
