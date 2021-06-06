//
//  myView.m
//  Graphics Tests
//
//  Created by DM on 2/17/13.
//  Copyright (c) 2013 DM. All rights reserved.
//

#import "myView.h"

@implementation myView

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
    
    CGContextSetLineWidth(context, 3);
    CGContextSetShadowWithColor(context, CGSizeMake(0, 0), 30, [[UIColor yellowColor]CGColor]);
    
    
    //CGContextSetRGBStrokeColor(context, .9, 0.10, 0.47, 1.0);     //magenta
    //CGContextSetRGBStrokeColor(context, 0, 0.68, 0.92, 1.0);       //cyan
    CGContextSetStrokeColorWithColor(context, [[UIColor yellowColor]CGColor]);
    
    CGContextAddRect(context, CGRectMake(100, 200, 50, 100));
    CGContextAddEllipseInRect(context, CGRectMake(100, 150, 50, 50));
    CGContextMoveToPoint(context, 100, 225);
    CGContextAddLineToPoint(context, 65, 240);
    CGContextMoveToPoint(context, 150, 225);
    CGContextAddLineToPoint(context, 185, 240);
    CGContextMoveToPoint(context, 110, 300);
    CGContextAddLineToPoint(context, 105, 340);
    CGContextMoveToPoint(context, 140, 300);
    CGContextAddLineToPoint(context, 145, 340);
    CGContextAddCurveToPoint(context, 130, 290, 130, 310, 141, 300);
    CGContextAddCurveToPoint(context, 150, 280, 130, 309, 147, 332);
    CGContextStrokePath(context);
    CGContextSetShadowWithColor(context, CGSizeMake(0, 0), 30, [[UIColor cyanColor]CGColor]);
    CGContextSetRGBStrokeColor(context, 0, 0.68, 0.92, 1.0);
    CGContextAddRect(context, CGRectMake(25, 200, 50, 100));
    CGContextStrokePath(context);
    CGContextSetShadowWithColor(context, CGSizeMake(0, 0), 30, [[UIColor magentaColor]CGColor]);
    CGContextSetRGBStrokeColor(context, .9, 0.10, 0.47, 1.0);
    CGContextAddRect(context, CGRectMake(175, 200, 50, 100));
    CGContextStrokePath(context);
}

@end
