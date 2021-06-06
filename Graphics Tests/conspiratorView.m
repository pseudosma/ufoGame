//
//  conspiratorView.m
//  Graphics Tests
//
//  Created by DM on 10/5/13.
//  Copyright (c) 2013 DM. All rights reserved.
//

#import "conspiratorView.h"

@implementation conspiratorHairView

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
    
    CGContextMoveToPoint(context, 2, 8);
    CGContextAddQuadCurveToPoint(context, 6, 10, 10, 9);
    CGContextMoveToPoint(context, 3, 11);
    CGContextAddQuadCurveToPoint(context, 7, 13, 10, 11);
    CGContextMoveToPoint(context, 5, 13);
    CGContextAddQuadCurveToPoint(context, 7, 15, 10, 12);
    CGContextMoveToPoint(context, 28, 8);
    CGContextAddQuadCurveToPoint(context, 23, 10, 20, 9);
    CGContextMoveToPoint(context, 27, 11);
    CGContextAddQuadCurveToPoint(context, 22, 13, 20, 11);
    CGContextMoveToPoint(context, 26, 14);
    CGContextAddQuadCurveToPoint(context, 22, 15, 20, 13);
    CGContextMoveToPoint(context, 12, 7);
    CGContextAddQuadCurveToPoint(context, 9, 4, 10, 0);
    CGContextMoveToPoint(context, 15, 6);
    CGContextAddQuadCurveToPoint(context, 13, 3, 14, 1);
    CGContextMoveToPoint(context, 18, 7);
    CGContextAddQuadCurveToPoint(context, 15.5, 3, 16, 2);
    CGContextStrokePath(context);
}

@end

@implementation conspiratorOutfitView

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
    CGContextAddRect(context, CGRectMake(3, 17, 13, 7));
    CGContextMoveToPoint(context, 2, 3);
    CGContextAddLineToPoint(context, 6, 3);
    CGContextAddLineToPoint(context, 5, 15);
    CGContextAddLineToPoint(context, 0, 20);
    CGContextAddLineToPoint(context, 2, 3);
    CGContextMoveToPoint(context, 16, 3);
    CGContextAddLineToPoint(context, 11, 3);
    CGContextAddLineToPoint(context, 12, 15);
    CGContextAddLineToPoint(context, 18, 20);
    CGContextAddLineToPoint(context, 17, 3);
    CGContextFillPath(context);
    CGContextSetShadowWithColor(context, CGSizeZero, 3, [[UIColor blackColor]CGColor]);
    CGContextMoveToPoint(context, 6, 3);
    CGContextAddLineToPoint(context, 5, 15);
    CGContextAddLineToPoint(context, 0, 20);
    CGContextMoveToPoint(context, 11,3);
    CGContextAddLineToPoint(context, 12, 15);
    CGContextAddLineToPoint(context, 18, 20);
    CGContextStrokePath(context);
}

@end

@implementation conspiratorSleeveView

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

@implementation conspiratorPantLegView

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
    
    CGContextAddRect(context, CGRectMake(3, 2, 4, 15));
    CGContextFillPath(context);
}

@end
