//
//  objects.m
//  Graphics Tests
//
//  Created by DM on 7/23/13.
//  Copyright (c) 2013 DM. All rights reserved.
//

#import "objects.h"

@implementation hoeView

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
    CGContextSetStrokeColorWithColor(context, [[UIColor magentaColor]CGColor]);
    CGContextSetShadowWithColor(context, CGSizeZero, 3, [[UIColor magentaColor]CGColor]);
    CGContextSetFillColorWithColor(context, [[UIColor magentaColor]CGColor]);
    
    CGContextSetLineWidth(context, 1);
    CGContextMoveToPoint(context, 0, 3);
    CGContextAddLineToPoint(context, 7, 3);
    CGContextAddQuadCurveToPoint(context, 5, 4, 5, 9);
    CGContextAddLineToPoint(context, 5, 40);
    CGContextStrokePath(context);
}


@end

@implementation shotgunView

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
    CGContextSetStrokeColorWithColor(context, [[UIColor magentaColor]CGColor]);
    CGContextSetShadowWithColor(context, CGSizeZero, 3, [[UIColor magentaColor]CGColor]);
    CGContextSetFillColorWithColor(context, [[UIColor magentaColor]CGColor]);
    
    CGContextMoveToPoint(context, 25, 6);
    CGContextAddLineToPoint(context, 23, 7);
    CGContextAddQuadCurveToPoint(context, 20, 6, 17, 5);
    CGContextAddLineToPoint(context, 11, 5);
    CGContextAddLineToPoint(context, 11, 6);
    CGContextAddLineToPoint(context, 7, 6);
    CGContextAddLineToPoint(context, 7, 5);
    CGContextAddLineToPoint(context, 3, 5);
    CGContextAddLineToPoint(context, 3, 3);
    CGContextAddLineToPoint(context, 17, 3);
    CGContextAddQuadCurveToPoint(context, 22, 4, 25, 6);
    CGContextFillPath(context);
    
}

@end

@implementation handgunView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor clearColor];
    }
    return self;
}

- (void)drawRect:(CGRect)rect
{;
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(context, 1);
    CGContextSetStrokeColorWithColor(context, [[UIColor magentaColor]CGColor]);
    CGContextSetShadowWithColor(context, CGSizeZero, 3, [[UIColor magentaColor]CGColor]);
    CGContextSetFillColorWithColor(context, [[UIColor magentaColor]CGColor]);
    
    
    CGContextMoveToPoint(context, 3, 3);
    CGContextAddLineToPoint(context, 9, 3);
    CGContextAddLineToPoint(context, 11, 8);
    CGContextAddLineToPoint(context, 9, 8);
    CGContextAddLineToPoint(context, 8, 5);
    CGContextAddLineToPoint(context, 3, 5);
    CGContextAddLineToPoint(context, 3, 3);
    CGContextFillPath(context);
}

@end

@implementation batonView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor clearColor];
    }
    return self;
}

- (void)drawRect:(CGRect)rect
{;
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(context, 1);
    CGContextSetStrokeColorWithColor(context, [[UIColor magentaColor]CGColor]);
    CGContextSetShadowWithColor(context, CGSizeZero, 3, [[UIColor magentaColor]CGColor]);
    CGContextSetFillColorWithColor(context, [[UIColor magentaColor]CGColor]);
    
    CGContextMoveToPoint(context, 3, 3);
    CGContextAddLineToPoint(context, 3, 20);
    CGContextAddLineToPoint(context, 5, 20);
    CGContextAddLineToPoint(context, 5, 16);
    CGContextAddLineToPoint(context, 9, 16);
    CGContextAddLineToPoint(context, 9, 14);
    CGContextAddLineToPoint(context, 5, 14);
    CGContextAddLineToPoint(context, 5, 3);
    CGContextAddLineToPoint(context, 3, 3);
    CGContextFillPath(context);
}

@end

@implementation whistleView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor clearColor];
    }
    return self;
}

- (void)drawRect:(CGRect)rect
{;
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(context, 1);
    CGContextSetStrokeColorWithColor(context, [[UIColor magentaColor]CGColor]);
    CGContextSetShadowWithColor(context, CGSizeZero, 3, [[UIColor magentaColor]CGColor]);
    CGContextSetFillColorWithColor(context, [[UIColor magentaColor]CGColor]);
    
    CGContextAddEllipseInRect(context, CGRectMake(3, 3, 3, 3));
    CGContextAddRect(context, CGRectMake(5, 3, 3, 2));
    CGContextFillPath(context);
}

@end

@implementation donutView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor clearColor];
    }
    return self;
}

- (void)drawRect:(CGRect)rect
{;
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(context, 1);
    CGContextSetStrokeColorWithColor(context, [[UIColor magentaColor]CGColor]);
    CGContextSetShadowWithColor(context, CGSizeZero, 2, [[UIColor magentaColor]CGColor]);
    CGContextSetFillColorWithColor(context, [[UIColor magentaColor]CGColor]);
    
    CGContextAddEllipseInRect(context, CGRectMake(2, 2, 6, 6));
    CGContextAddEllipseInRect(context, CGRectMake(3, 3, 4, 4));
    CGContextEOFillPath(context);
}

@end

@implementation newspaperView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor clearColor];
    }
    return self;
}

- (void)drawRect:(CGRect)rect
{;
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(context, 1);
    CGContextSetFillColorWithColor(context, [[UIColor blackColor]CGColor]);
    
    CGContextMoveToPoint(context, 3, 3);
    CGContextAddLineToPoint(context, 3, 15);
    CGContextAddQuadCurveToPoint(context, 8, 12, 13, 18);
    CGContextAddQuadCurveToPoint(context, 18, 12, 23, 15);
    CGContextAddLineToPoint(context, 23, 3);
    CGContextAddQuadCurveToPoint(context, 18, 2, 13, 6);
    CGContextAddQuadCurveToPoint(context, 8, 2, 3, 3);
    CGContextFillPath(context);
    CGContextSetStrokeColorWithColor(context, [[UIColor magentaColor]CGColor]);
    CGContextSetShadowWithColor(context, CGSizeZero, 2, [[UIColor magentaColor]CGColor]);
    CGContextMoveToPoint(context, 3, 3);
    CGContextAddLineToPoint(context, 3, 15);
    CGContextAddQuadCurveToPoint(context, 8, 12, 13, 18);
    CGContextAddQuadCurveToPoint(context, 18, 12, 23, 15);
    CGContextAddLineToPoint(context, 23, 3);
    CGContextAddQuadCurveToPoint(context, 18, 2, 13, 6);
    CGContextAddQuadCurveToPoint(context, 8, 2, 3, 3);
    CGContextMoveToPoint(context, 13, 6);
    CGContextAddLineToPoint(context, 13, 18);
    CGContextStrokePath(context);
}

@end

@implementation walkieTalkieView

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
    CGContextSetFillColorWithColor(context, [[UIColor magentaColor]CGColor]);
    CGContextSetStrokeColorWithColor(context, [[UIColor magentaColor]CGColor]);
    CGContextSetShadowWithColor(context, CGSizeZero, 2, [[UIColor magentaColor]CGColor]);
    
    CGContextMoveToPoint(context, 3, 3);
    CGContextAddLineToPoint(context, 3, 14);
    CGContextStrokePath(context);
    CGContextAddRect(context, CGRectMake(3, 7, 4, 7));
    CGContextFillPath(context);
}

@end

@implementation rifleView
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
    CGContextSetFillColorWithColor(context, [[UIColor magentaColor]CGColor]);
    CGContextSetStrokeColorWithColor(context, [[UIColor magentaColor]CGColor]);
    CGContextSetShadowWithColor(context, CGSizeZero, 2, [[UIColor magentaColor]CGColor]);
    
    CGContextMoveToPoint(context, 7, 8);
    CGContextAddLineToPoint(context,7, 9);
    CGContextAddLineToPoint(context, 19, 11);
    CGContextAddQuadCurveToPoint(context, 15, 11.5, 16, 14);
    CGContextAddLineToPoint(context, 19, 16);
    CGContextAddQuadCurveToPoint(context, 16, 13, 19, 11);
    CGContextAddLineToPoint(context, 19, 11);
    CGContextAddLineToPoint(context, 23, 14);
    CGContextAddLineToPoint(context, 24, 14);
    CGContextAddLineToPoint(context, 23, 11);
    CGContextAddLineToPoint(context, 26, 11);
    CGContextAddLineToPoint(context, 26, 8);
    CGContextAddLineToPoint(context, 7, 8);
    CGContextFillPath(context);
    CGContextMoveToPoint(context, 3, 8.5);
    CGContextAddLineToPoint(context, 7, 8.5);
    CGContextMoveToPoint(context, 15, 8);
    CGContextAddLineToPoint(context, 17, 6);
    CGContextAddLineToPoint(context, 20, 6);
    CGContextAddLineToPoint(context, 22, 8);
    CGContextMoveToPoint(context, 26, 9);
    CGContextAddLineToPoint(context, 30, 9);
    CGContextAddLineToPoint(context, 30, 12);
    CGContextAddLineToPoint(context, 26, 9);
    CGContextStrokePath(context);
}

@end

@implementation bazookaView
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
    CGContextSetFillColorWithColor(context, [[UIColor magentaColor]CGColor]);
    CGContextSetStrokeColorWithColor(context, [[UIColor magentaColor]CGColor]);
    CGContextSetShadowWithColor(context, CGSizeZero, 2, [[UIColor magentaColor]CGColor]);
    
    CGContextMoveToPoint(context, 4, 4);
    CGContextAddQuadCurveToPoint(context, 3, 6, 4, 8);
    CGContextAddLineToPoint(context, 6, 8);
    CGContextAddLineToPoint(context, 8, 12);
    CGContextAddLineToPoint(context, 9, 12);
    CGContextAddLineToPoint(context, 7, 8);
    CGContextAddLineToPoint(context, 45, 8);
    CGContextAddLineToPoint(context, 45, 4);
    CGContextAddLineToPoint(context, 4, 4);
    CGContextFillPath(context);
}

@end

@implementation liquorBottleView
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
    CGContextSetFillColorWithColor(context, [[UIColor magentaColor]CGColor]);
    CGContextSetStrokeColorWithColor(context, [[UIColor magentaColor]CGColor]);
    CGContextSetShadowWithColor(context, CGSizeZero, 2, [[UIColor magentaColor]CGColor]);
    
    CGContextMoveToPoint(context, 5, 2);
    CGContextAddLineToPoint(context, 5, 6);
    CGContextAddQuadCurveToPoint(context, 3, 7, 3, 12);
    CGContextAddLineToPoint(context, 3, 16);
    CGContextAddQuadCurveToPoint(context, 6, 17, 9, 16);
    CGContextAddLineToPoint(context, 9, 12);
    CGContextAddQuadCurveToPoint(context, 9, 7, 7, 6);
    CGContextAddLineToPoint(context, 7, 2);
    CGContextAddLineToPoint(context, 5, 2);
    CGContextFillPath(context);
    
}

@end

@implementation cameraView

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
    CGContextSetFillColorWithColor(context, [[UIColor blackColor]CGColor]);
    
    CGContextAddRect(context, CGRectMake(3, 10, 7, 4));
    CGContextAddEllipseInRect(context, CGRectMake(5, 7, 3, 3));
    CGContextAddRect(context, CGRectMake(4, 4, 5, 3));
    CGContextFillPath(context);
    
    CGContextAddRect(context, CGRectMake(3, 10, 7, 4));
    CGContextAddEllipseInRect(context, CGRectMake(4.5, 10, 4, 4));
    CGContextAddEllipseInRect(context, CGRectMake(5, 7, 3, 3));
    CGContextMoveToPoint(context, 5, 7);
    CGContextAddLineToPoint(context, 4, 5);
    CGContextMoveToPoint(context, 8, 7);
    CGContextAddLineToPoint(context, 9, 5);
    CGContextAddRect(context, CGRectMake(4, 4, 5, 3));
    CGContextSetStrokeColorWithColor(context, [[UIColor magentaColor]CGColor]);
    CGContextSetShadowWithColor(context, CGSizeZero, 3, [[UIColor magentaColor]CGColor]);
    CGContextStrokePath(context);
    
}

@end

@implementation yoyoView : UIImageView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor clearColor];
        self.animationImages = [self animationCode];
        self.animationDuration = .8;
        self.animationRepeatCount = INFINITY;
        [self startAnimating];
    }
    return self;
}
- (NSArray *)animationCode{
    
    UIGraphicsBeginImageContextWithOptions(CGSizeMake(10,25), NO, 0);
    CGContextRef context1 = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(context1, 1);
    CGContextSetStrokeColorWithColor(context1, [[UIColor magentaColor]CGColor]);
    CGContextSetFillColorWithColor(context1, [[UIColor magentaColor]CGColor]);
    CGContextSetShadowWithColor(context1, CGSizeMake(0, 0), 3, [[UIColor magentaColor]CGColor]);
    CGContextAddEllipseInRect(context1, CGRectMake(3, 3, 4, 4));
    CGContextFillPath(context1);
    y1 = UIGraphicsGetImageFromCurrentImageContext();
    CGContextRelease(context1);
    
    UIGraphicsBeginImageContextWithOptions(CGSizeMake(10,25), NO, 0);
    CGContextRef context2 = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(context2, 1);
    CGContextSetStrokeColorWithColor(context2, [[UIColor magentaColor]CGColor]);
    CGContextSetFillColorWithColor(context2, [[UIColor magentaColor]CGColor]);
    CGContextSetShadowWithColor(context2, CGSizeMake(0, 0), 3, [[UIColor magentaColor]CGColor]);
    CGContextAddEllipseInRect(context2, CGRectMake(3, 6, 4, 4));
    CGContextFillPath(context2);
    CGContextFillPath(context2);
    CGContextMoveToPoint(context2, 5, 3);
    CGContextAddLineToPoint(context2, 5, 7);
    CGContextStrokePath(context2);
    y2 = UIGraphicsGetImageFromCurrentImageContext();
    CGContextRelease(context2);
    
    UIGraphicsBeginImageContextWithOptions(CGSizeMake(10,25), NO, 0);
    CGContextRef context3 = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(context3, 1);
    CGContextSetStrokeColorWithColor(context3, [[UIColor magentaColor]CGColor]);
    CGContextSetFillColorWithColor(context3, [[UIColor magentaColor]CGColor]);
    CGContextSetShadowWithColor(context3, CGSizeMake(0, 0), 3, [[UIColor magentaColor]CGColor]);
    CGContextAddEllipseInRect(context3, CGRectMake(3, 9, 4, 4));
    CGContextFillPath(context3);
    CGContextFillPath(context3);
    CGContextMoveToPoint(context3, 5, 3);
    CGContextAddLineToPoint(context3, 5, 10);
    CGContextStrokePath(context3);
    y3 = UIGraphicsGetImageFromCurrentImageContext();
    CGContextRelease(context3);
    
    UIGraphicsBeginImageContextWithOptions(CGSizeMake(10,25), NO, 0);
    CGContextRef context4 = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(context4, 1);
    CGContextSetStrokeColorWithColor(context4, [[UIColor magentaColor]CGColor]);
    CGContextSetFillColorWithColor(context4, [[UIColor magentaColor]CGColor]);
    CGContextSetShadowWithColor(context4, CGSizeMake(0, 0), 3, [[UIColor magentaColor]CGColor]);
    CGContextAddEllipseInRect(context4, CGRectMake(3, 12, 4, 4));
    CGContextFillPath(context4);
    CGContextFillPath(context4);
    CGContextMoveToPoint(context4, 5, 3);
    CGContextAddLineToPoint(context4, 5, 13);
    CGContextStrokePath(context4);
    y4 = UIGraphicsGetImageFromCurrentImageContext();
    CGContextRelease(context4);
    
    UIGraphicsBeginImageContextWithOptions(CGSizeMake(10,25), NO, 0);
    CGContextRef context5 = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(context5, 1);
    CGContextSetStrokeColorWithColor(context5, [[UIColor magentaColor]CGColor]);
    CGContextSetFillColorWithColor(context5, [[UIColor magentaColor]CGColor]);
    CGContextSetShadowWithColor(context5, CGSizeMake(0, 0), 3, [[UIColor magentaColor]CGColor]);
    CGContextAddEllipseInRect(context5, CGRectMake(3, 15, 4, 4));
    CGContextFillPath(context5);
    CGContextFillPath(context5);
    CGContextMoveToPoint(context5, 5, 3);
    CGContextAddLineToPoint(context5, 5, 16);
    CGContextStrokePath(context5);
    y5 = UIGraphicsGetImageFromCurrentImageContext();
    CGContextRelease(context5);
    
    UIGraphicsBeginImageContextWithOptions(CGSizeMake(10,25), NO, 0);
    CGContextRef context6 = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(context6, 1);
    CGContextSetStrokeColorWithColor(context6, [[UIColor magentaColor]CGColor]);
    CGContextSetFillColorWithColor(context6, [[UIColor magentaColor]CGColor]);
    CGContextSetShadowWithColor(context6, CGSizeMake(0, 0), 3, [[UIColor magentaColor]CGColor]);
    CGContextAddEllipseInRect(context6, CGRectMake(3, 17, 4, 4));
    CGContextFillPath(context6);
    CGContextMoveToPoint(context6, 5, 3);
    CGContextAddLineToPoint(context6, 5, 18);
    CGContextStrokePath(context6);
    y6 = UIGraphicsGetImageFromCurrentImageContext();
    CGContextRelease(context6);
    
    UIGraphicsBeginImageContextWithOptions(CGSizeMake(10,25), NO, 0);
    CGContextRef context7 = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(context7, 1);
    CGContextSetStrokeColorWithColor(context7, [[UIColor magentaColor]CGColor]);
    CGContextSetFillColorWithColor(context7, [[UIColor magentaColor]CGColor]);
    CGContextSetShadowWithColor(context7, CGSizeMake(0, 0), 3, [[UIColor magentaColor]CGColor]);
    CGContextAddEllipseInRect(context7, CGRectMake(3, 15, 4, 4));
    CGContextFillPath(context7);
    CGContextMoveToPoint(context7, 5, 3);
    CGContextAddLineToPoint(context7, 5, 16);
    CGContextStrokePath(context7);
    y7 = UIGraphicsGetImageFromCurrentImageContext();
    CGContextRelease(context7);
    
    UIGraphicsBeginImageContextWithOptions(CGSizeMake(10,25), NO, 0);
    CGContextRef context8 = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(context8, 1);
    CGContextSetStrokeColorWithColor(context8, [[UIColor magentaColor]CGColor]);
    CGContextSetFillColorWithColor(context8, [[UIColor magentaColor]CGColor]);
    CGContextSetShadowWithColor(context8, CGSizeMake(0, 0), 3, [[UIColor magentaColor]CGColor]);
    CGContextAddEllipseInRect(context8, CGRectMake(3, 12, 4, 4));
    CGContextFillPath(context8);
    CGContextMoveToPoint(context8, 5, 3);
    CGContextAddLineToPoint(context8, 5, 13);
    CGContextStrokePath(context8);
    y8 = UIGraphicsGetImageFromCurrentImageContext();
    CGContextRelease(context8);
    
    UIGraphicsBeginImageContextWithOptions(CGSizeMake(10,25), NO, 0);
    CGContextRef context9 = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(context9, 1);
    CGContextSetStrokeColorWithColor(context9, [[UIColor magentaColor]CGColor]);
    CGContextSetFillColorWithColor(context9, [[UIColor magentaColor]CGColor]);
    CGContextSetShadowWithColor(context9, CGSizeMake(0, 0), 3, [[UIColor magentaColor]CGColor]);
    CGContextAddEllipseInRect(context9, CGRectMake(3, 9, 4, 4));
    CGContextFillPath(context9);
    CGContextMoveToPoint(context9, 5, 3);
    CGContextAddLineToPoint(context9, 5, 10);
    CGContextStrokePath(context9);
    y9 = UIGraphicsGetImageFromCurrentImageContext();
    CGContextRelease(context9);
    
    UIGraphicsBeginImageContextWithOptions(CGSizeMake(10,25), NO, 0);
    CGContextRef context10 = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(context10, 1);
    CGContextSetStrokeColorWithColor(context10, [[UIColor magentaColor]CGColor]);
    CGContextSetFillColorWithColor(context10, [[UIColor magentaColor]CGColor]);
    CGContextSetShadowWithColor(context10, CGSizeMake(0, 0), 3, [[UIColor magentaColor]CGColor]);
    CGContextAddEllipseInRect(context10, CGRectMake(3, 6, 4, 4));
    CGContextFillPath(context10);
    CGContextMoveToPoint(context10, 5, 3);
    CGContextAddLineToPoint(context10, 5, 7);
    CGContextStrokePath(context10);
    y10 = UIGraphicsGetImageFromCurrentImageContext();
    CGContextRelease(context10);
    
    UIGraphicsBeginImageContextWithOptions(CGSizeMake(10,25), NO, 0);
    CGContextRef context11 = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(context11, 1);
    CGContextSetStrokeColorWithColor(context11, [[UIColor magentaColor]CGColor]);
    CGContextSetFillColorWithColor(context11, [[UIColor magentaColor]CGColor]);
    CGContextSetShadowWithColor(context11, CGSizeMake(0, 0), 3, [[UIColor magentaColor]CGColor]);
    CGContextAddEllipseInRect(context11, CGRectMake(3, 3, 4, 4));
    CGContextFillPath(context11);
    y11 = UIGraphicsGetImageFromCurrentImageContext();
    CGContextRelease(context11);

    
    NSArray *y = @[y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11];
    return y;
}

@end

@implementation seedView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor clearColor];
        self.clipsToBounds = NO;
        self.alpha = 0;
    }
    return self;
}
//this method will need to be called from the character's view controller during AI calls
- (void)animate{
    self.alpha = 1;
    [self makeSeedEmitterAndInsert];
    [UIView animateWithDuration:1 animations:^{
        self.alpha = 0;
    } completion:^(BOOL finished) {
        [[self.layer.sublayers objectAtIndex:0] removeFromSuperlayer];
        seeds.emitterCells = nil;
        seedling = nil;
        seeds = nil;
    }];
}

- (CAEmitterCell *)makeSeeds{
    UIGraphicsBeginImageContextWithOptions(CGSizeMake(6,6), NO, 0);
    CGContextRef context1 = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(context1, 1);
    CGContextSetStrokeColorWithColor(context1, [[UIColor magentaColor]CGColor]);
    CGContextSetFillColorWithColor(context1, [[UIColor magentaColor]CGColor]);
    CGContextSetShadowWithColor(context1, CGSizeMake(0, 0), 3, [[UIColor magentaColor]CGColor]);
    CGContextAddEllipseInRect(context1, CGRectMake(2, 2, 1, 1));
    CGContextFillPath(context1);
    seedling = UIGraphicsGetImageFromCurrentImageContext();
    CGContextRelease(context1);
    
    seed = [CAEmitterCell emitterCell];
    seed.emissionLongitude = M_PI;
    seed.emissionRange = .5;
    seed.yAcceleration = 100;
    seed.velocityRange = 40;
    seed.birthRate = 15;
    seed.lifetime = 1;
    seed.velocity = 30;
    seed.contents = (id)seedling.CGImage;
    
    return seed;
}

- (void)makeSeedEmitterAndInsert{
    seeds = [CAEmitterLayer new];
    seeds.emitterPosition = CGPointMake(5, 1);
    seeds.seed = rand();
    seeds.emitterShape = kCAEmitterLayerRectangle;
    seeds.emitterMode = kCAEmitterLayerVolume;
    seeds.emitterSize = CGSizeMake(1, 5);
    
    seeds.emitterCells = @[[self makeSeeds]];
    [self.layer insertSublayer:seeds atIndex:0];
}

@end

@implementation cigarette

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor clearColor];
        self.clipsToBounds = NO;
        self.alpha = 0;
        csl = [[cigaretteSecondLayer alloc] initWithFrame:CGRectMake(2.5, 2, 7, 3)];
        smokeHolder = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 1, 1)];
        smokeHolder.clipsToBounds = NO;
        smokeHolder.alpha = .4;
        [self addSubview:smokeHolder];
        [self addSubview:csl];
        
    }
    return self;
}

- (void)animate{
    [UIView animateWithDuration:.9 animations:^{
        self.alpha = 1;
        [self makeSmokeEmitterAndInsert];
    }];
}

- (void)deanimate{
    [UIView animateWithDuration:.2 animations:^{
     self.alpha = 0;
     } completion:^(BOOL finished) {
     [[smokeHolder.layer.sublayers objectAtIndex:0] removeFromSuperlayer];
     cigaretteSmoke.emitterCells = nil;
     }];
}

- (CAEmitterCell *)makeSmoke{
    UIGraphicsBeginImageContextWithOptions(CGSizeMake(6,6), NO, 0);
    CGContextRef context1 = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(context1, 1);
    CGContextSetStrokeColorWithColor(context1, [[UIColor magentaColor]CGColor]);
    CGContextSetFillColorWithColor(context1, [[UIColor magentaColor]CGColor]);
    CGContextSetShadowWithColor(context1, CGSizeMake(0, 0), 1, [[UIColor magentaColor]CGColor]);
    CGContextAddEllipseInRect(context1, CGRectMake(2, 1, .5, 4));
    CGContextFillPath(context1);
    UIImage* s = UIGraphicsGetImageFromCurrentImageContext();
    CGContextRelease(context1);
    
    smoke = [CAEmitterCell emitterCell];
    smoke.emissionLongitude = M_PI + M_PI / 2;
    smoke.emissionRange = .05;
    smoke.xAcceleration = 10;
    smoke.velocityRange = 10;
    smoke.birthRate = 20;
    smoke.lifetime = 1;
    smoke.velocity = 15;
    smoke.alphaSpeed = -1;
    smoke.contents = (id)s.CGImage;
    
    return smoke;
}

- (void)makeSmokeEmitterAndInsert{
    cigaretteSmoke = [CAEmitterLayer new];
    cigaretteSmoke.emitterPosition = CGPointMake(5, 1);
    cigaretteSmoke.seed = rand();
    cigaretteSmoke.emitterShape = kCAEmitterLayerRectangle;
    cigaretteSmoke.emitterMode = kCAEmitterLayerVolume;
    cigaretteSmoke.emitterSize = CGSizeMake(1, 5);
    
    cigaretteSmoke.emitterCells = @[[self makeSmoke]];
    [smokeHolder.layer insertSublayer:cigaretteSmoke atIndex:0];
}

@end

@implementation cigaretteSecondLayer

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor clearColor];
    }
    return self;
}

- (void)drawRect:(CGRect)rect
{;
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(context, 1);
    CGContextSetFillColorWithColor(context, [[UIColor magentaColor]CGColor]);
    CGContextSetStrokeColorWithColor(context, [[UIColor magentaColor]CGColor]);
    CGContextSetShadowWithColor(context, CGSizeZero, 1, [[UIColor magentaColor]CGColor]);
    CGContextAddRect(context, CGRectMake(2, 2, 5, 1));
    CGContextFillPath(context);
}

@end


