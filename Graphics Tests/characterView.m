//
//  characterView.m
//  Graphics Tests
//
//  Created by DM on 2/21/13.
//  Copyright (c) 2013 DM. All rights reserved.
//

#import "characterView.h"

@implementation characterView

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
    CGContextSetShadowWithColor(context, CGSizeMake(0, 0), 5, [[UIColor magentaColor]CGColor]);
    CGContextSetRGBStrokeColor(context, .9, 0.10, 0.47, 1.0);
    CGContextSetLineWidth(context, 1);
    
    CGContextAddEllipseInRect(context, CGRectMake(200, 50, 80, 30));
    CGContextStrokePath(context);
    CGContextSetShadowWithColor(context, CGSizeMake(0, 0), 5, [[UIColor yellowColor]CGColor]);
    CGContextSetStrokeColorWithColor(context, [[UIColor yellowColor]CGColor]);
    CGContextAddRect(context, CGRectMake(200, 270, 10, 20));
    CGContextAddEllipseInRect(context, CGRectMake(199, 258, 12, 12));
    CGContextStrokePath(context);
}


@end
