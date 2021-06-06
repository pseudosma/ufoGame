//
//  militaryView.m
//  Graphics Tests
//
//  Created by DM on 7/30/13.
//  Copyright (c) 2013 DM. All rights reserved.
//

#import "militaryView.h"

@implementation militaryHelmetView

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
    CGContextSetLineWidth(context, 2);
    CGContextSetStrokeColorWithColor(context, [[UIColor blackColor]CGColor]);
    CGContextSetFillColorWithColor(context, [[UIColor yellowColor]CGColor]);
    CGContextSetShadowWithColor(context, CGSizeZero, 3, [[UIColor yellowColor]CGColor]);
    
    CGContextMoveToPoint(context, 3, 20);
    CGContextAddQuadCurveToPoint(context, 10.5, 22, 22, 20);
    CGContextAddCurveToPoint(context, 19, 6, 6, 6, 3, 20);
    CGContextFillPath(context);
    CGContextMoveToPoint(context, 11.5, 19);
    CGContextAddLineToPoint(context, 11.5, 13);
    CGContextMoveToPoint(context, 8.5, 16);
    CGContextAddLineToPoint(context, 14.5, 16);
    CGContextStrokePath(context);
}

@end

@implementation militaryUniformView

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
    
    CGContextAddRect(context, CGRectMake(8, 3, 11, 21));
    CGContextAddEllipseInRect(context, CGRectMake(6, 19, 3, 3));
    CGContextAddEllipseInRect(context, CGRectMake(19, 19, 3, 3));
    CGContextFillPath(context);
    CGContextSetFillColorWithColor(context, [[UIColor blackColor]CGColor]);
    CGContextMoveToPoint(context, 9, 4);
    CGContextAddLineToPoint(context, 9, 18);
    CGContextAddLineToPoint(context, 18, 18);
    CGContextAddLineToPoint(context, 18, 4);
    CGContextAddQuadCurveToPoint(context, 12, 8, 9, 4);
    CGContextFillPath(context);
    CGContextMoveToPoint(context, 9, 20);
    CGContextAddLineToPoint(context, 18, 20);
    CGContextStrokePath(context);

}

@end


@implementation militaryUniformPantLegView

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
    CGContextSetFillColorWithColor(context, [[UIColor blackColor]CGColor]);
    CGContextAddEllipseInRect(context, CGRectMake(3, 11, 3, 3));
    CGContextFillPath(context);
}

@end
