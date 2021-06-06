//
//  reporterView.m
//  Graphics Tests
//
//  Created by DM on 8/4/13.
//  Copyright (c) 2013 DM. All rights reserved.
//

#import "reporterView.h"

@implementation reporterHatView

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
    
    CGContextMoveToPoint(context, 3, 10);
    CGContextAddQuadCurveToPoint(context, 16, 11, 23, 10);
    CGContextAddQuadCurveToPoint(context, 19, 8, 20, 9);
    CGContextAddLineToPoint(context, 19, 4);
    CGContextAddQuadCurveToPoint(context, 16, 3, 9, 4);
    CGContextAddLineToPoint(context, 8, 9);
    CGContextAddQuadCurveToPoint(context, 6, 8, 3, 10);
    CGContextFillPath(context);
    CGContextSetStrokeColorWithColor(context, [[UIColor blackColor]CGColor]);
    CGContextMoveToPoint(context, 8, 8);
    CGContextAddQuadCurveToPoint(context, 16, 9, 20, 8);
    CGContextStrokePath(context);
}

@end

@implementation reporterJacketView

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
        
    CGContextAddRect(context, CGRectMake(3, 3, 11, 21));
    CGContextFillPath(context);
    CGContextSetFillColorWithColor(context, [[UIColor yellowColor]CGColor]);
    CGContextSetShadowWithColor(context, CGSizeZero, 3, [[UIColor yellowColor]CGColor]);
    CGContextAddRect(context, CGRectMake(3, 17, 11, 7));
    CGContextMoveToPoint(context, 2, 3);
    CGContextAddLineToPoint(context, 7, 3);
    CGContextAddLineToPoint(context, 8, 15);
    CGContextAddLineToPoint(context, 2, 19);
    CGContextAddLineToPoint(context, 3, 13);
    CGContextAddLineToPoint(context, 2, 3);
    CGContextMoveToPoint(context, 16, 3);
    CGContextAddLineToPoint(context, 10, 3);
    CGContextAddLineToPoint(context, 9, 15);
    CGContextAddLineToPoint(context, 16, 19);
    CGContextAddLineToPoint(context, 15, 13);
    CGContextAddLineToPoint(context, 16, 3);
    CGContextFillPath(context);
    CGContextSetShadowWithColor(context, CGSizeZero, 3, [[UIColor blackColor]CGColor]);
    CGContextMoveToPoint(context, 7, 3);
    CGContextAddLineToPoint(context, 8, 15);
    CGContextAddLineToPoint(context, 2, 19);
    CGContextMoveToPoint(context, 10,3);
    CGContextAddLineToPoint(context, 9, 15);
    CGContextAddLineToPoint(context, 16, 19);
    CGContextStrokePath(context);
}

@end

@implementation reporterJacketSleeveView

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

@implementation reporterPantLegView

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
    
    CGContextAddRect(context, CGRectMake(3, 3, 3, 15));
    CGContextFillPath(context);
}

@end