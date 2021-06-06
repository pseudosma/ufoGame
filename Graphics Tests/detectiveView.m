//
//  detectiveView.m
//  Graphics Tests
//
//  Created by DM on 10/5/13.
//  Copyright (c) 2013 DM. All rights reserved.
//

#import "detectiveView.h"

@implementation detectiveHatView

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
    CGContextAddQuadCurveToPoint(context, 16, 11, 25, 10);
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

@implementation detectiveCoatView

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
    
    CGContextAddRect(context, CGRectMake(3, 3, 11, 32));
    CGContextFillPath(context);
    CGContextSetFillColorWithColor(context, [[UIColor yellowColor]CGColor]);
    CGContextSetShadowWithColor(context, CGSizeZero, 3, [[UIColor yellowColor]CGColor]);
    CGContextMoveToPoint(context, 2, 3);
    CGContextAddLineToPoint(context, 7, 3);
    CGContextAddLineToPoint(context, 8, 15);
    CGContextAddLineToPoint(context, 6, 35);
    CGContextAddLineToPoint(context, 0, 33);
    CGContextAddLineToPoint(context, 2, 3);
    CGContextMoveToPoint(context, 16, 3);
    CGContextAddLineToPoint(context, 10, 3);
    CGContextAddLineToPoint(context, 9, 15);
    CGContextAddLineToPoint(context, 11, 35);
    CGContextAddLineToPoint(context, 19, 33);
    CGContextAddLineToPoint(context, 16, 3);
    CGContextFillPath(context);
    CGContextSetShadowWithColor(context, CGSizeZero, 3, [[UIColor blackColor]CGColor]);
    CGContextMoveToPoint(context, 7, 3);
    CGContextAddLineToPoint(context, 5, 9);
    CGContextAddLineToPoint(context, 7, 17);
    CGContextMoveToPoint(context, 10, 3);
    CGContextAddLineToPoint(context, 12, 9);
    CGContextAddLineToPoint(context, 10, 17);
    CGContextStrokePath(context);
    }

@end

@implementation detectiveCoatSleeveView

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

