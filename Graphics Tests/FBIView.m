//
//  FBIView.m
//  Graphics Tests
//
//  Created by DM on 7/28/13.
//  Copyright (c) 2013 DM. All rights reserved.
//

#import "FBIView.h"

@implementation FBIshadesView

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
 
    CGContextMoveToPoint(context, 3, 6);
    CGContextMoveToPoint(context, 15, 6);
    CGContextAddQuadCurveToPoint(context, 10.5, 10, 8.5, 7);
    CGContextAddQuadCurveToPoint(context, 6.5, 10, 3, 6);
    CGContextFillPath(context);
}

@end

@implementation FBIsuitView

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
    CGContextAddLineToPoint(context, 5, 24);
    CGContextAddLineToPoint(context, 14, 24);
    CGContextAddLineToPoint(context, 16, 3);
    CGContextAddLineToPoint(context, 3, 3);
    CGContextFillPath(context);
    CGContextSetFillColorWithColor(context, [[UIColor blackColor]CGColor]);
    CGContextMoveToPoint(context, 8, 4);
    CGContextAddLineToPoint(context, 7, 18);
    CGContextAddLineToPoint(context, 8.5, 19);
    CGContextAddLineToPoint(context, 10, 18);
    CGContextAddLineToPoint(context, 9, 4);
    CGContextFillPath(context);
}

@end

@implementation FBIsuitSleeveView

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

    CGContextAddRect(context, CGRectMake(3, 3, 3, 13));
    CGContextFillPath(context);
}

@end

@implementation FBIsuitLegView

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