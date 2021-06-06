//
//  farmerView.m
//  Graphics Tests
//
//  Created by DM on 7/19/13.
//  Copyright (c) 2013 DM. All rights reserved.
//

#import "farmerView.h"

@implementation strawHatView

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
    CGContextSetFillColorWithColor(context, [[UIColor yellowColor]CGColor]);
    CGContextSetShadowWithColor(context, CGSizeZero, 3, [[UIColor yellowColor]CGColor]);
    
    CGContextMoveToPoint(context, 0, 12);
    CGContextAddQuadCurveToPoint(context, 12, 15, 24, 12);
    CGContextAddLineToPoint(context, 16, 9);
    CGContextAddLineToPoint(context, 15, 4.5);
    CGContextAddQuadCurveToPoint(context, 10, 3, 9, 5);
    CGContextAddLineToPoint(context, 8, 9);
    CGContextAddLineToPoint(context, 0, 12);
    CGContextFillPath(context);
}


@end

@implementation overallsView

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
    
    CGContextAddRect(context, CGRectMake(3, 15, 10, 6));
    CGContextFillPath(context);
    CGContextMoveToPoint(context, 6, 15);
    CGContextAddLineToPoint(context, 6, 0);
    CGContextMoveToPoint(context, 10, 15);
    CGContextAddLineToPoint(context, 10, 0);
    CGContextStrokePath(context);
    
}


@end

@implementation overallsPantLeg

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
    CGContextSetFillColorWithColor(context, [[UIColor yellowColor]CGColor]);
    CGContextSetShadowWithColor(context, CGSizeZero, 3, [[UIColor yellowColor]CGColor]);
    
    CGContextAddRect(context, CGRectMake(3, 3, 4, 15));
    CGContextFillPath(context);

}
 

@end

