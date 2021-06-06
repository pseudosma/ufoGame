//
//  UFOView.m
//  Graphics Tests
//
//  Created by DM on 3/7/13.
//  Copyright (c) 2013 DM. All rights reserved.
//

#import "UFOView.h"

@implementation UFOView

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
    CGContextSetRGBStrokeColor(context, .9, 0.10, 0.47, 1.0);
    CGContextSetLineWidth(context, 1);
    CGContextSetShadowWithColor(context, CGSizeMake(0, 0), 5, [[UIColor colorWithRed:.9 green:.10 blue:.47 alpha:1]CGColor]);
    
    CGContextMoveToPoint(context, 5, 35);
    CGContextAddQuadCurveToPoint(context, 65, 80, 125, 35);
    CGContextMoveToPoint(context, 125, 35);
    CGContextAddQuadCurveToPoint(context, 65, 50, 5, 35);
    CGContextAddQuadCurveToPoint(context, 20, 20, 45, 15);
    CGContextMoveToPoint(context, 85, 15);
    CGContextAddQuadCurveToPoint(context, 110, 20, 125, 35);
    CGContextMoveToPoint(context, 45, 15);
    CGContextAddQuadCurveToPoint(context, 65, -10, 85, 15);
    CGContextAddQuadCurveToPoint(context, 65, 20, 45, 15);
    
    CGContextStrokePath(context);
}

@end

@implementation UFOBackingView

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
    CGContextSetShadowWithColor(context, CGSizeMake(0, 0), 5, [[UIColor yellowColor]CGColor]);
    CGContextSetFillColorWithColor(context, [[UIColor yellowColor]CGColor]);
    
    CGContextMoveToPoint(context, 5, 35);
    CGContextAddQuadCurveToPoint(context, 65, 80, 125, 35);
    CGContextAddQuadCurveToPoint(context, 110, 20, 85, 15);
    CGContextAddQuadCurveToPoint(context, 65, -10, 45, 15);
    CGContextAddQuadCurveToPoint(context, 20, 20, 5, 35);
    
    CGContextFillPath(context);
}

@end

@implementation UFOBlueBackingView

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
    CGContextSetShadowWithColor(context, CGSizeMake(0, 0), 5, [[UIColor cyanColor]CGColor]);
    CGContextSetFillColorWithColor(context, [[UIColor cyanColor]CGColor]);
    
    CGContextMoveToPoint(context, 5, 35);
    CGContextAddQuadCurveToPoint(context, 65, 80, 125, 35);
    CGContextAddQuadCurveToPoint(context, 110, 20, 85, 15);
    CGContextAddQuadCurveToPoint(context, 65, -10, 45, 15);
    CGContextAddQuadCurveToPoint(context, 20, 20, 5, 35);
    
    CGContextFillPath(context);
}

@end

@implementation UFOFlair1View

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
    CGContextSetRGBStrokeColor(context, .9, 0.10, 0.47, 1.0);
    CGContextSetLineWidth(context, 1);
    CGContextSetShadowWithColor(context, CGSizeMake(0, 0), 5, [[UIColor colorWithRed:.9 green:.10 blue:.47 alpha:1]CGColor]);

    CGContextMoveToPoint(context, 45, 15);
    CGContextAddCurveToPoint(context, -60, 35, 65, 80, 125, 35);
    CGContextAddQuadCurveToPoint(context, 113, 18, 82, 14);
    CGContextAddQuadCurveToPoint(context, 60, -8, 43, 17);
    CGContextAddQuadCurveToPoint(context, 65, 20, 91, 11);
    CGContextMoveToPoint(context, 5, 35);
    CGContextAddQuadCurveToPoint(context, 70, 44, 130, 31);
    
    CGContextStrokePath(context);
}

@end

@implementation UFOFlair2View

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
    CGContextSetRGBStrokeColor(context, .9, 0.10, 0.47, 1.0);
    CGContextSetLineWidth(context, 1);
    CGContextSetShadowWithColor(context, CGSizeMake(0, 0), 5, [[UIColor colorWithRed:.9 green:.10 blue:.47 alpha:1]CGColor]);
    
    CGContextMoveToPoint(context, 85, 15);
    CGContextAddCurveToPoint(context, 185, 35, 65, 80, 5, 35);
    CGContextAddQuadCurveToPoint(context, 22, 19, 48, 13);
    CGContextAddQuadCurveToPoint(context, 67, -14, 86, 17);
    CGContextAddQuadCurveToPoint(context, 61, 23, 37, 15);
    CGContextMoveToPoint(context, 86, 17);
    CGContextAddQuadCurveToPoint(context, 114, 22, 127, 38);
    CGContextAddQuadCurveToPoint(context, 60, 55, 0, 33);
    
    CGContextStrokePath(context);
}

@end

