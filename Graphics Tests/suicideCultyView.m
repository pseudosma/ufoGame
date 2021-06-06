//
//  suicideCultyView.m
//  Graphics Tests
//
//  Created by DM on 10/5/13.
//  Copyright (c) 2013 DM. All rights reserved.
//

#import "suicideCultyView.h"

@implementation suicideCultyCoatView

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
    CGContextSetShadowWithColor(context, CGSizeZero, 3, [[UIColor yellowColor]CGColor]);
    CGContextMoveToPoint(context, 7, 3);
    CGContextAddLineToPoint(context, 5, 9);
    CGContextAddLineToPoint(context, 7, 17);
    CGContextMoveToPoint(context, 10, 3);
    CGContextAddLineToPoint(context, 12, 9);
    CGContextAddLineToPoint(context, 10, 17);
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
    CGContextStrokePath(context);
    CGContextSetStrokeColorWithColor(context, [[UIColor magentaColor]CGColor]);
    CGContextSetShadowWithColor(context, CGSizeZero, 3, [[UIColor blackColor]CGColor]);
    CGContextSetLineWidth(context, 2);
    CGContextMoveToPoint(context, 4, 3);
    CGContextAddQuadCurveToPoint(context, 7, 15, 18, 25);
    CGContextMoveToPoint(context, 15, 3);
    CGContextAddQuadCurveToPoint(context, 5, 12, 1, 25);
    CGContextStrokePath(context);
    CGContextSetFillColorWithColor(context, [[UIColor magentaColor]CGColor]);
    CGContextAddRect(context, CGRectMake(5, 10, 5, 5));
    CGContextFillPath(context);
}

@end

@implementation suicideCultyCoatSleeveView

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
    
    CGContextMoveToPoint(context, 3, 5);
    CGContextAddLineToPoint(context, 4, 16);
    CGContextAddLineToPoint(context, 7, 16);
    CGContextAddLineToPoint(context, 7, 3);
    CGContextFillPath(context);
    CGContextSetFillColorWithColor(context, [[UIColor yellowColor]CGColor]);
    CGContextSetShadowWithColor(context, CGSizeZero, 3, [[UIColor yellowColor]CGColor]);
    CGContextMoveToPoint(context, 3, 5);
    CGContextAddLineToPoint(context, 4, 16);
    CGContextAddLineToPoint(context, 7, 16);
    CGContextAddLineToPoint(context, 7, 3);
    CGContextStrokePath(context);
}

@end

@implementation blinkingLight

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
    CGContextSetStrokeColorWithColor(context, [[UIColor cyanColor]CGColor]);
    CGContextSetFillColorWithColor(context, [[UIColor cyanColor]CGColor]);
    CGContextSetShadowWithColor(context, CGSizeZero, 3, [[UIColor blackColor]CGColor]);
    
    CGContextAddEllipseInRect(context, CGRectMake(3, 3, 2, 2));
    CGContextFillPath(context);
  }

@end




