//
//  mountieView.m
//  Graphics Tests
//
//  Created by DM on 8/1/13.
//  Copyright (c) 2013 DM. All rights reserved.
//

#import "mountieView.h"

@implementation mountieHatView

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
    
    CGContextMoveToPoint(context, 3, 13);
    CGContextAddLineToPoint(context, 26, 13);
    CGContextAddQuadCurveToPoint(context, 24, 12, 21, 11);
    CGContextAddQuadCurveToPoint(context, 22, 3, 14.5, 5);
    CGContextAddQuadCurveToPoint(context, 7, 3, 8, 11);
    CGContextAddQuadCurveToPoint(context, 5, 12, 3, 13);
    CGContextFillPath(context);
    CGContextMoveToPoint(context, 1, 13);
    CGContextAddLineToPoint(context, 28, 13);
    CGContextStrokePath(context);
    CGContextSetStrokeColorWithColor(context, [[UIColor blackColor]CGColor]);
    CGContextMoveToPoint(context, 8, 11);
    CGContextAddLineToPoint(context, 21, 11);
    CGContextStrokePath(context);
}

@end

@implementation mountieUniformView

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
    
    CGContextMoveToPoint(context, 3, 3);
    CGContextAddLineToPoint(context, 4, 23);
    CGContextAddLineToPoint(context, 14, 23);
    CGContextAddLineToPoint(context, 15, 3);
    CGContextAddLineToPoint(context, 3, 3);
    CGContextFillPath(context);
    CGContextMoveToPoint(context, 14, 17);
    CGContextAddQuadCurveToPoint(context, 9, 18, 3.5, 17);
    CGContextAddQuadCurveToPoint(context, 7, 7, 14, 3);
    CGContextStrokePath(context);
}

@end

@implementation mountieUniformSleeveView

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
    
    CGContextAddRect(context, CGRectMake(3, 3, 3, 13));
    CGContextFillPath(context);
    CGContextSetLineWidth(context, 1);
    CGContextMoveToPoint(context, 3, 12);
    CGContextAddLineToPoint(context, 6, 12);
    CGContextStrokePath(context);
}

@end

@implementation mountieUniformPantLegView

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
    
    CGContextMoveToPoint(context, 3, 3);
    CGContextAddLineToPoint(context, 6, 3);
    CGContextAddLineToPoint(context, 6, 15);
    CGContextAddLineToPoint(context, 3, 15);
    CGContextAddLineToPoint(context, 3, 10);
    CGContextAddQuadCurveToPoint(context, 0, 4, 3, 3);
    CGContextFillPath(context);
    CGContextMoveToPoint(context, 3, 14);
    CGContextAddLineToPoint(context, 6, 14);
    CGContextStrokePath(context);
}

@end