//
//  effects.m
//  Graphics Tests
//
//  Created by DM on 3/29/13.
//  Copyright (c) 2013 DM. All rights reserved.
//

#import "effects.h"

@implementation effects
@synthesize type, startPoint, endPoint, lR;

- (void)viewDidLoad
{
    lR = -1;
    self.view.backgroundColor = [UIColor clearColor];
    self.view.bounds = [[UIScreen mainScreen] bounds];
    self.view.frame = [[UIScreen mainScreen] bounds];
    self.view.clipsToBounds = NO;
    
    [super viewDidLoad];
}

# pragma mark - Effects Definitions

- (UIImage *)makeFire{

    UIGraphicsBeginImageContextWithOptions(CGSizeMake(23,23), NO, 0);
    CGContextRef context1 = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(context1, 1);
    CGContextSetStrokeColorWithColor(context1, [[UIColor yellowColor]CGColor]);
    CGContextSetShadowWithColor(context1, CGSizeMake(0, 0), 3, [[UIColor yellowColor]CGColor]);
    CGContextMoveToPoint(context1, 11, 20);
    CGContextAddQuadCurveToPoint(context1, 0, 13, 7, 7);
    CGContextAddQuadCurveToPoint(context1, 7, 7, 13, 13);
    CGContextAddQuadCurveToPoint(context1, 19, 13, 20, 3);
    CGContextAddQuadCurveToPoint(context1, 23, 17, 11, 20);
    CGContextStrokePath(context1);
    UIImage* fire1 = UIGraphicsGetImageFromCurrentImageContext();
    CGContextRelease(context1);
    
    UIGraphicsBeginImageContextWithOptions(CGSizeMake(23,23), NO, 0);
    CGContextRef context2 = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(context2, 1);
    CGContextSetStrokeColorWithColor(context2, [[UIColor yellowColor]CGColor]);
    CGContextSetShadowWithColor(context2, CGSizeMake(0, 0), 3, [[UIColor yellowColor]CGColor]);
    CGContextMoveToPoint(context2, 13, 20);
    CGContextAddQuadCurveToPoint(context2, 0, 10, 3, 3);
    CGContextAddQuadCurveToPoint(context2, 7, 8, 12, 9);
    CGContextAddQuadCurveToPoint(context2, 20, 13, 18, 6);
    CGContextAddQuadCurveToPoint(context2, 23, 20, 13, 20);
    CGContextStrokePath(context2);
    UIImage* fire2 = UIGraphicsGetImageFromCurrentImageContext();
    CGContextRelease(context2);
    
    UIGraphicsBeginImageContextWithOptions(CGSizeMake(23,23), NO, 0);
    CGContextRef context3 = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(context3, 1);
    CGContextSetStrokeColorWithColor(context3, [[UIColor yellowColor]CGColor]);
    CGContextSetShadowWithColor(context3, CGSizeMake(0, 0), 3, [[UIColor yellowColor]CGColor]);
    CGContextMoveToPoint(context3, 11, 20);
    CGContextAddQuadCurveToPoint(context3, 0, 10, 3, 5);
    CGContextAddCurveToPoint(context3, 13, 13, 20, 15, 11, 20);
    CGContextStrokePath(context3);
    UIImage* fire3 = UIGraphicsGetImageFromCurrentImageContext();
    CGContextRelease(context3);
    
    UIGraphicsBeginImageContextWithOptions(CGSizeMake(23,23), NO, 0);
    CGContextRef context4 = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(context4, 1);
    CGContextSetStrokeColorWithColor(context4, [[UIColor yellowColor]CGColor]);
    CGContextSetShadowWithColor(context4, CGSizeMake(0, 0), 3, [[UIColor yellowColor]CGColor]);
    CGContextMoveToPoint(context4, 12, 20);
    CGContextAddQuadCurveToPoint(context4, 0, 13, 5, 6);
    CGContextAddCurveToPoint(context4, 8, 8, 16, 5, 18, 10);
    CGContextAddQuadCurveToPoint(context4, 23, 17, 12, 20);
    CGContextStrokePath(context4);
    UIImage* fire4 = UIGraphicsGetImageFromCurrentImageContext();
    CGContextRelease(context4);

    NSArray *array = @[fire1,fire2,fire3,fire4,fire3,fire2];
    
    UIImage *f = [UIImage animatedImageWithImages:array duration:.5];
    
    return f;
}

- (UIImage *)makeExplosion{
    
    UIGraphicsBeginImageContextWithOptions(CGSizeMake(40,40), NO, 0);
    CGContextRef context1 = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(context1, 1);
    CGContextSetStrokeColorWithColor(context1, [[UIColor yellowColor]CGColor]);
    CGContextSetFillColorWithColor(context1, [[UIColor yellowColor]CGColor]);
    CGContextSetShadowWithColor(context1, CGSizeMake(0, 0), 3, [[UIColor yellowColor]CGColor]);
    CGContextAddEllipseInRect(context1, CGRectMake(19, 19, 2, 2)); 
    CGContextFillPath(context1);
    UIImage* explosion1 = UIGraphicsGetImageFromCurrentImageContext();
    CGContextRelease(context1);
    
    UIGraphicsBeginImageContextWithOptions(CGSizeMake(40,40), NO, 0);
    CGContextRef context2 = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(context2, 1);
    CGContextSetStrokeColorWithColor(context2, [[UIColor yellowColor]CGColor]);
    CGContextSetFillColorWithColor(context2, [[UIColor yellowColor]CGColor]);
    CGContextSetShadowWithColor(context2, CGSizeMake(0, 0), 3, [[UIColor yellowColor]CGColor]);
    CGContextAddEllipseInRect(context2, CGRectMake(17, 17, 6, 6));
    CGContextFillPath(context2);
    UIImage* explosion2 = UIGraphicsGetImageFromCurrentImageContext();
    CGContextRelease(context2);
    
    UIGraphicsBeginImageContextWithOptions(CGSizeMake(40,40), NO, 0);
    CGContextRef context3 = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(context3, 1);
    CGContextSetStrokeColorWithColor(context3, [[UIColor yellowColor]CGColor]);
    CGContextSetFillColorWithColor(context2, [[UIColor yellowColor]CGColor]);
    CGContextSetShadowWithColor(context3, CGSizeMake(0, 0), 3, [[UIColor yellowColor]CGColor]);
    CGContextAddEllipseInRect(context3, CGRectMake(10, 10, 20, 20));
    CGContextFillPath(context3);
    UIImage* explosion3 = UIGraphicsGetImageFromCurrentImageContext();
    CGContextRelease(context3);
    
    UIGraphicsBeginImageContextWithOptions(CGSizeMake(40,40), NO, 0);
    CGContextRef context4 = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(context4, 1);
    CGContextSetStrokeColorWithColor(context4, [[UIColor yellowColor]CGColor]);
    CGContextSetFillColorWithColor(context4, [[UIColor yellowColor]CGColor]);
    CGContextSetShadowWithColor(context4, CGSizeMake(0, 0), 3, [[UIColor yellowColor]CGColor]);
    CGContextAddEllipseInRect(context4, CGRectMake(5, 5, 30, 30));
    CGContextFillPath(context4);
    UIImage* explosion4 = UIGraphicsGetImageFromCurrentImageContext();
    CGContextRelease(context4);
    
    NSArray *array = @[explosion1,explosion2,explosion3,explosion4];
    
    UIImage *e = [UIImage animatedImageWithImages:array duration:.3];
    
    return e;
}

- (CAEmitterCell*)makeSmoke{
    UIGraphicsBeginImageContextWithOptions(CGSizeMake(23,23), NO, 0);
    CGContextRef context1 = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(context1, 1);
    CGContextSetFillColorWithColor(context1, [[UIColor cyanColor]CGColor]);
    CGContextSetStrokeColorWithColor(context1, [[UIColor cyanColor]CGColor]);
    CGContextSetShadowWithColor(context1, CGSizeMake(0, 0), 3, [[UIColor cyanColor]CGColor]);
    CGContextMoveToPoint(context1, 11, 5);
    CGContextAddQuadCurveToPoint(context1, 23, 0, 20, 8);
    CGContextAddQuadCurveToPoint(context1, 23, 23, 16, 15);
    CGContextAddQuadCurveToPoint(context1, 10, 21, 8, 20);
    CGContextAddQuadCurveToPoint(context1, 3, 12, 5, 5);
    CGContextAddQuadCurveToPoint(context1, 3, 5, 11, 5);
    CGContextFillPath(context1);
    UIImage* smoke = UIGraphicsGetImageFromCurrentImageContext();
    CGContextRelease(context1);

    CAEmitterCell *cell = [CAEmitterCell emitterCell];
    cell.emissionLongitude = M_PI *2;
    cell.emissionRange = M_PI * 2;
    cell.spin = 1;
    cell.spinRange = 1;
    cell.scaleRange = .1;
    cell.scaleSpeed = -.5;
    cell.velocityRange = 5;
    cell.birthRate = 3;
    cell.lifetime = 1;
    cell.velocity = 15;
    cell.scale = .3;
    cell.contents = (id)smoke.CGImage;

    return cell;
}

- (CAEmitterCell *)makeDebris{
    UIGraphicsBeginImageContextWithOptions(CGSizeMake(6,6), NO, 0);
    CGContextRef context1 = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(context1, 1);
    CGContextSetStrokeColorWithColor(context1, [[UIColor cyanColor]CGColor]);
    CGContextSetFillColorWithColor(context1, [[UIColor cyanColor]CGColor]);
    CGContextSetShadowWithColor(context1, CGSizeMake(0, 0), 3, [[UIColor cyanColor]CGColor]);
    CGContextAddEllipseInRect(context1, CGRectMake(2, 2, 2, 2));
    CGContextFillPath(context1);
    UIImage* debris = UIGraphicsGetImageFromCurrentImageContext();
    CGContextRelease(context1);

    CAEmitterCell *cell = [CAEmitterCell emitterCell];
    cell.emissionLongitude = -M_PI/2;
    cell.emissionRange = M_PI;
    cell.yAcceleration = 100;
    cell.scaleRange = .5;
    cell.velocityRange = 40;
    cell.birthRate = 7;
    cell.lifetime = .5;
    cell.velocity = 100;
    
    cell.contents = (id)debris.CGImage;
    
    return cell;
}

- (UIImage* )makeBullet{
    UIGraphicsBeginImageContextWithOptions(CGSizeMake(6,6), NO, 0);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(context, 1);
    CGContextSetStrokeColorWithColor(context, [[UIColor yellowColor]CGColor]);
    CGContextSetFillColorWithColor(context, [[UIColor yellowColor]CGColor]);
    CGContextSetShadowWithColor(context, CGSizeMake(0, 0), 3, [[UIColor yellowColor]CGColor]);
    CGContextAddEllipseInRect(context, CGRectMake(2, 2, 2, 2));
    CGContextFillPath(context);
    UIImage* b = UIGraphicsGetImageFromCurrentImageContext();
    CGContextRelease(context);
    return b;
}

- (UIImage*)makeMissile{
    UIGraphicsBeginImageContextWithOptions(CGSizeMake(8,16), NO, 0);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(context, 1);
    CGContextSetStrokeColorWithColor(context, [[UIColor yellowColor]CGColor]);
    CGContextSetShadowWithColor(context, CGSizeMake(0, 0), 3, [[UIColor yellowColor]CGColor]);
    CGContextMoveToPoint(context, 3, 15);
    CGContextAddQuadCurveToPoint(context, 2, 8, 4, 3);
    CGContextAddQuadCurveToPoint(context, 6, 8, 5, 15);
    CGContextAddLineToPoint(context, 3, 15);
    CGContextStrokePath(context);
    UIImage* m = UIGraphicsGetImageFromCurrentImageContext();
    CGContextRelease(context);
    return m;
}

- (void)missileSmoke{
    CGPoint point;
    point.x = [[self.view viewWithTag:999].layer.presentationLayer position].x;
    point.y = [[self.view viewWithTag:999].layer.presentationLayer position].y;
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(point.x, point.y - 8, 1, 1)];
    view.backgroundColor = [UIColor clearColor];
    view.clipsToBounds = NO;
    view.alpha = 1;
    
    CAEmitterLayer* emitter = [CAEmitterLayer new];
    emitter.emitterPosition = CGPointMake(0, 5);
    emitter.emitterShape = kCAEmitterLayerPoint;
    emitter.emitterMode = kCAEmitterLayerPoint;
    emitter.seed = rand();
    
    emitter.emitterCells = @[[self makeSmoke]];
    [view.layer insertSublayer:emitter atIndex:0];
    [self.view addSubview:view];
    [UIView animateWithDuration:1 animations:^{
        view.alpha = 0;
    } completion:^(BOOL finished) {
        [[view.layer.sublayers objectAtIndex:0] removeFromSuperlayer];
        [view removeFromSuperview];
    }];
}

- (UIImage*)makeGernade{
    UIGraphicsBeginImageContextWithOptions(CGSizeMake(7,7), NO, 0);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(context, 1);
    CGContextSetStrokeColorWithColor(context, [[UIColor yellowColor]CGColor]);
    CGContextSetFillColorWithColor(context, [[UIColor yellowColor]CGColor]);
    CGContextSetShadowWithColor(context, CGSizeMake(0, 0), 3, [[UIColor yellowColor]CGColor]);
    CGContextAddEllipseInRect(context, CGRectMake(3, 3, 4, 4));
    CGContextFillPath(context);
    UIImage* g = UIGraphicsGetImageFromCurrentImageContext();
    CGContextRelease(context);
    return g;

}

- (CAEmitterCell *)makeSparks :(int)leftRight{
    UIGraphicsBeginImageContextWithOptions(CGSizeMake(8,3), NO, 0);
    CGContextRef context1 = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(context1, 1);
    CGContextSetStrokeColorWithColor(context1, [[UIColor yellowColor]CGColor]);
    CGContextSetShadowWithColor(context1, CGSizeMake(0, 0), 3, [[UIColor yellowColor]CGColor]);
    CGContextMoveToPoint(context1, 1, 1.5);
    CGContextAddLineToPoint(context1, 7, 1.5);
    CGContextStrokePath(context1);
    UIImage* spark = UIGraphicsGetImageFromCurrentImageContext();
    CGContextRelease(context1);

    
    CAEmitterCell *cell = [CAEmitterCell emitterCell];
    cell.emissionLongitude = M_PI * leftRight;
    cell.emissionRange = M_PI/6;
    cell.velocityRange = 10;
    cell.xAcceleration = 50 * leftRight;
    cell.yAcceleration = 200;
    cell.spin = 1;
    cell.spinRange = 1;
    cell.birthRate = 5;
    cell.lifetime = .3;
    cell.velocity = 100 * leftRight;
    cell.contents = (id)spark.CGImage;
    
    return cell;
}

- (UIImage*)makeBubble{
    UIGraphicsBeginImageContextWithOptions(CGSizeMake(50,50), NO, 0);
    CGContextRef context1 = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(context1, 1);
    CGContextSetStrokeColorWithColor(context1, [[UIColor magentaColor]CGColor]);
    CGContextSetShadowWithColor(context1, CGSizeMake(0, 0), 3, [[UIColor magentaColor]CGColor]);
    CGContextAddEllipseInRect(context1, CGRectMake(3, 3, 44, 44));
    CGContextStrokePath(context1);
    UIImage* bubble1 = UIGraphicsGetImageFromCurrentImageContext();
    CGContextRelease(context1);
    
    UIGraphicsBeginImageContextWithOptions(CGSizeMake(50,50), NO, 0);
    CGContextRef context2 = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(context2, 1);
    CGContextSetStrokeColorWithColor(context2, [[UIColor magentaColor]CGColor]);
    CGContextSetShadowWithColor(context2, CGSizeMake(0, 0), 3, [[UIColor magentaColor]CGColor]);
    CGContextAddEllipseInRect(context2, CGRectMake(4, 3, 42, 44));
    CGContextStrokePath(context2);
    UIImage* bubble2= UIGraphicsGetImageFromCurrentImageContext();
    CGContextRelease(context2);
    
    UIGraphicsBeginImageContextWithOptions(CGSizeMake(50,50), NO, 0);
    CGContextRef context3 = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(context3, 1);
    CGContextSetStrokeColorWithColor(context3, [[UIColor magentaColor]CGColor]);
    CGContextSetShadowWithColor(context3, CGSizeMake(0, 0), 3, [[UIColor magentaColor]CGColor]);
    CGContextAddEllipseInRect(context3, CGRectMake(5, 3, 40, 44));
    CGContextStrokePath(context3);
    UIImage* bubble3= UIGraphicsGetImageFromCurrentImageContext();
    CGContextRelease(context3);
    
    UIGraphicsBeginImageContextWithOptions(CGSizeMake(50,50), NO, 0);
    CGContextRef context4 = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(context4, 1);
    CGContextSetStrokeColorWithColor(context4, [[UIColor magentaColor]CGColor]);
    CGContextSetShadowWithColor(context4, CGSizeMake(0, 0), 3, [[UIColor magentaColor]CGColor]);
    CGContextAddEllipseInRect(context4, CGRectMake(6, 3, 38, 44));
    CGContextStrokePath(context4);
    UIImage* bubble4= UIGraphicsGetImageFromCurrentImageContext();
    CGContextRelease(context4);
    
    NSArray *array = @[bubble1,bubble2,bubble3,bubble4,bubble3,bubble2];
    UIImage *b = [UIImage animatedImageWithImages:array duration:.3];
    return  b;
}

- (UIImage*)makeSquiggles{
    UIGraphicsBeginImageContextWithOptions(CGSizeMake(20,20), NO, 0);
    CGContextRef context1 = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(context1, 1);
    CGContextSetStrokeColorWithColor(context1, [[UIColor magentaColor]CGColor]);
    CGContextSetShadowWithColor(context1, CGSizeMake(0, 0), 3, [[UIColor magentaColor]CGColor]);
    CGContextMoveToPoint(context1, 3, 12);
    CGContextAddCurveToPoint(context1, 5, 17, 15, 7, 10, 5);
    CGContextAddCurveToPoint(context1, 5, 5, 5, 10, 8, 15);
    CGContextAddCurveToPoint(context1, 17, 17, 15, 3, 4, 10);
    CGContextAddCurveToPoint(context1, 3, 17, 12, 14, 10, 17);
    CGContextAddCurveToPoint(context1, 3, 10, 15, 8, 5, 5);
    CGContextAddCurveToPoint(context1, 8, 15, 14, 13, 11, 11);
    CGContextStrokePath(context1);
    UIImage* squiggle1 = UIGraphicsGetImageFromCurrentImageContext();
    CGContextRelease(context1);
    
    UIGraphicsBeginImageContextWithOptions(CGSizeMake(20,20), NO, 0);
    CGContextRef context2 = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(context2, 1);
    CGContextSetStrokeColorWithColor(context2, [[UIColor magentaColor]CGColor]);
    CGContextSetShadowWithColor(context2, CGSizeMake(0, 0), 3, [[UIColor magentaColor]CGColor]);
    CGContextMoveToPoint(context2, 17, 3);
    CGContextAddCurveToPoint(context2, 3, 3, 5, 9, 17, 10);
    CGContextAddCurveToPoint(context2, 17, 17, 13, 5, 7, 7);
    CGContextAddCurveToPoint(context2, 5, 4, 11, 3, 17, 4);
    CGContextAddCurveToPoint(context2, 10, 3, 9, 15, 7, 8);
    CGContextAddCurveToPoint(context2, 7, 6, 3, 15, 13, 16);
    CGContextAddCurveToPoint(context2, 3, 10, 3, 15, 17, 17);
    CGContextStrokePath(context2);
    UIImage* squiggle2 = UIGraphicsGetImageFromCurrentImageContext();
    CGContextRelease(context2);
    
    UIGraphicsBeginImageContextWithOptions(CGSizeMake(20,20), NO, 0);
    CGContextRef context3 = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(context3, 1);
    CGContextSetStrokeColorWithColor(context3, [[UIColor magentaColor]CGColor]);
    CGContextSetShadowWithColor(context3, CGSizeMake(0, 0), 3, [[UIColor magentaColor]CGColor]);
    CGContextMoveToPoint(context3, 5, 5);
    CGContextAddCurveToPoint(context3, 3, 10, 3, 15, 17, 17);
    CGContextAddCurveToPoint(context3, 17, 6, 12, 10, 11, 8);
    CGContextAddCurveToPoint(context3, 5, 8, 3, 3, 6, 3);
    CGContextAddCurveToPoint(context3, 4, 15, 6, 4, 3, 16);
    CGContextAddCurveToPoint(context3, 10, 3, 9, 15, 7, 8);
    CGContextAddCurveToPoint(context3, 6, 14, 5, 17, 12, 3);
    CGContextStrokePath(context3);
    UIImage* squiggle3 = UIGraphicsGetImageFromCurrentImageContext();
    CGContextRelease(context3);
    
    UIGraphicsBeginImageContextWithOptions(CGSizeMake(20,20), NO, 0);
    CGContextRef context4 = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(context4, 1);
    CGContextSetStrokeColorWithColor(context4, [[UIColor magentaColor]CGColor]);
    CGContextSetShadowWithColor(context4, CGSizeMake(0, 0), 3, [[UIColor magentaColor]CGColor]);
    CGContextMoveToPoint(context4, 17, 10);
    CGContextAddCurveToPoint(context4, 4, 9, 7, 8, 8, 11);
    CGContextAddCurveToPoint(context4, 3, 14, 9, 17, 10, 15);
    CGContextAddCurveToPoint(context4, 17, 8, 3, 4, 7, 3);
    CGContextAddCurveToPoint(context4, 3, 10, 3, 15, 17, 5);
    CGContextAddCurveToPoint(context4, 5, 17, 15, 7, 10, 5);
    CGContextAddCurveToPoint(context4, 6, 14, 5, 17, 17, 3);
    CGContextStrokePath(context4);
    UIImage* squiggle4 = UIGraphicsGetImageFromCurrentImageContext();
    CGContextRelease(context4);
    
    NSArray *array = @[squiggle1,squiggle2,squiggle3,squiggle4,squiggle2,squiggle1,squiggle3];
    
    UIImage *s = [UIImage animatedImageWithImages:array duration:.8];
    
    return s;

}

- (UIImage*)makeSignal{
    UIGraphicsBeginImageContextWithOptions(CGSizeMake(30,20), NO, 0);
    CGContextRef context1 = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(context1, 1);
    CGContextSetStrokeColorWithColor(context1, [[UIColor magentaColor]CGColor]);
    CGContextSetShadowWithColor(context1, CGSizeMake(0, 0), 3, [[UIColor magentaColor]CGColor]);
    CGContextMoveToPoint(context1, 3, 3);
    CGContextAddLineToPoint(context1, 7, 9);
    CGContextAddLineToPoint(context1, 8, 7);
    CGContextAddLineToPoint(context1, 12, 16);
    CGContextMoveToPoint(context1, 12, 2);
    CGContextAddLineToPoint(context1, 12, 8);
    CGContextAddLineToPoint(context1, 13, 7);
    CGContextAddLineToPoint(context1, 14, 15);
    CGContextMoveToPoint(context1, 27, 3);
    CGContextAddLineToPoint(context1, 22, 9);
    CGContextAddLineToPoint(context1, 23, 7);
    CGContextAddLineToPoint(context1, 16, 16);
    CGContextStrokePath(context1);
    UIImage* signal1 = UIGraphicsGetImageFromCurrentImageContext();
    CGContextRelease(context1);
    
    UIGraphicsBeginImageContextWithOptions(CGSizeMake(30,20), NO, 0);
    CGContextRef context2 = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(context2, 1);
    CGContextSetStrokeColorWithColor(context2, [[UIColor magentaColor]CGColor]);
    CGContextSetShadowWithColor(context2, CGSizeMake(0, 0), 3, [[UIColor magentaColor]CGColor]);
    CGContextMoveToPoint(context2, 9, 4);
    CGContextAddLineToPoint(context2, 12, 11);
    CGContextAddLineToPoint(context2, 11, 9);
    CGContextAddLineToPoint(context2, 14, 18);
    CGContextMoveToPoint(context2, 21, 4);
    CGContextAddLineToPoint(context2, 18, 11);
    CGContextAddLineToPoint(context2, 17, 9);
    CGContextAddLineToPoint(context2, 16, 18);
    CGContextStrokePath(context2);
    UIImage* signal2 = UIGraphicsGetImageFromCurrentImageContext();
    CGContextRelease(context2);
    
    UIGraphicsBeginImageContextWithOptions(CGSizeMake(30,20), NO, 0);
    CGContextRef context3 = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(context3, 1);
    CGContextSetStrokeColorWithColor(context3, [[UIColor magentaColor]CGColor]);
    CGContextSetShadowWithColor(context3, CGSizeMake(0, 0), 3, [[UIColor magentaColor]CGColor]);
    CGContextMoveToPoint(context3, 4, 4);
    CGContextAddLineToPoint(context3, 8, 10);
    CGContextAddLineToPoint(context3, 9, 8);
    CGContextAddLineToPoint(context3, 13, 17);
    CGContextMoveToPoint(context3, 13, 3);
    CGContextAddLineToPoint(context3, 13, 8);
    CGContextAddLineToPoint(context3, 14, 9);
    CGContextAddLineToPoint(context3, 15, 16);
    CGContextMoveToPoint(context3, 28, 3);
    CGContextAddLineToPoint(context3, 23, 10);
    CGContextAddLineToPoint(context3, 24, 8);
    CGContextAddLineToPoint(context3, 17, 17);
    CGContextStrokePath(context3);
    UIImage* signal3 = UIGraphicsGetImageFromCurrentImageContext();
    CGContextRelease(context3);
    
    UIGraphicsBeginImageContextWithOptions(CGSizeMake(30,20), NO, 0);
    CGContextRef context4 = UIGraphicsGetCurrentContext();
    UIImage* signal4 = UIGraphicsGetImageFromCurrentImageContext();
    CGContextRelease(context4);
    
    NSArray *array = @[signal4,signal1,signal4,signal2,signal4,signal3,signal4];
    
    UIImage *s = [UIImage animatedImageWithImages:array duration:.8];
    
    return s;
}

# pragma mark - Test Methods

- (void)touchEvent: (CGPoint)point{
    if (type == 1) {
        UIView *view = [[UIView alloc] initWithFrame:CGRectMake(point.x - 12.5, point.y - 12.5, 23, 23)];
        UIImageView *imageView = [[UIImageView alloc] initWithImage:[self makeFire]];
        [view addSubview:imageView];
        [self.view addSubview:view];
    }
    
    if (type == 2) {
        UIView *view = [[UIView alloc] initWithFrame:CGRectMake(point.x - 20, point.y - 20, 40, 40)];
        UIImageView *imageView = [[UIImageView alloc] initWithImage:[self makeExplosion]];
        imageView.alpha = 0;
        [view addSubview:imageView];
        [self.view addSubview:view];
        
        [UIView animateWithDuration:.3 animations:^{
            imageView.alpha = 1;
        } completion:^(BOOL finished) {
            [imageView removeFromSuperview];
            imageView.image = nil;
            [view removeFromSuperview];
        }];
    }
    if (type == 3) {
        UIView *view = [[UIView alloc] initWithFrame:CGRectMake(point.x - 5, point.y, 10, 1)];
        view.backgroundColor = [UIColor clearColor];
        view.clipsToBounds = NO;
        view.alpha = 1;
    
        CAEmitterLayer* emitter = [CAEmitterLayer new];
        emitter.emitterPosition = CGPointMake(5, 1);
        emitter.seed = rand();
        emitter.emitterShape = kCAEmitterLayerRectangle;
        emitter.emitterMode = kCAEmitterLayerVolume;
        emitter.emitterSize = CGSizeMake(10, 1);
        
        emitter.emitterCells = @[[self makeDebris]];
        [view.layer insertSublayer:emitter atIndex:0];
        [self.view addSubview:view];
        [UIView animateWithDuration:.5 animations:^{
            view.alpha = 0;
        } completion:^(BOOL finished) {
            [[view.layer.sublayers objectAtIndex:0] removeFromSuperlayer];
            [view removeFromSuperview];
        }]; 

    }
    if (type == 4) {
        UIView *view = [[UIView alloc] initWithFrame:CGRectMake(point.x, point.y, 1, 1)];
        view.backgroundColor = [UIColor clearColor];
        view.clipsToBounds = NO;
        view.alpha = 1;
        
        CAEmitterLayer* emitter = [CAEmitterLayer new];
        emitter.seed = rand();
        emitter.emitterPosition = CGPointMake(5, 1);
        emitter.emitterShape = kCAEmitterLayerPoint;
        emitter.emitterMode = kCAEmitterLayerVolume;
        emitter.emitterSize = CGSizeMake(10, 1);
        
        emitter.emitterCells = @[[self makeSmoke]];
        [view.layer insertSublayer:emitter atIndex:0];
        [self.view addSubview:view];
        [UIView animateWithDuration:1 animations:^{
            view.alpha = 0;
        } completion:^(BOOL finished) {
            [[view.layer.sublayers objectAtIndex:0] removeFromSuperlayer];
            [view removeFromSuperview];
        }];

    }
    if (type == 5) {
        startPoint = point;
        UIView *view = [[UIView alloc] initWithFrame:CGRectMake(startPoint.x -3, startPoint.y - 3, 6, 6)];
        UIImageView *imageView = [[UIImageView alloc] initWithImage:[self makeBullet]];
        [view addSubview:imageView];
        [self.view addSubview:view];
        [UIView animateWithDuration:.5 delay:0 options:UIViewAnimationOptionCurveLinear animations:^{
            view.center = endPoint;
        } completion:^(BOOL finished) {
            imageView.image = nil;
            [imageView removeFromSuperview];
            [view removeFromSuperview];
        }];
    }
    if (type == 6) {
        startPoint = point;
        UIView *view = [[UIView alloc] initWithFrame:CGRectMake(point.x - 4, point.y - 8, 8, 16)];
        view.tag = 999;
        NSTimer *t = [NSTimer scheduledTimerWithTimeInterval:.09 target:self selector:@selector(missileSmoke) userInfo:nil repeats:YES];
        UIImageView *imageView = [[UIImageView alloc] initWithImage:[self makeMissile]];
        view.transform = CGAffineTransformMakeRotation([self angleFunction]);
        [view addSubview:imageView];
        [self.view addSubview:view];
        [UIView animateWithDuration:.8 delay:0 options:UIViewAnimationOptionCurveEaseIn animations:^{
            view.center = endPoint;
        } completion:^(BOOL finished) {
            imageView.image = nil;
            [imageView removeFromSuperview];
            [view removeFromSuperview];
            [t invalidate];
        }];
    }
    if (type == 7) {
        startPoint = point;
        UIView *view = [[UIView alloc] initWithFrame:CGRectMake(startPoint.x - 4.5, startPoint.y - 4.5, 9, 9)];
        UIImageView *imageView = [[UIImageView alloc] initWithImage:[self makeGernade]];
        [view addSubview:imageView];
        [self.view addSubview:view];
        [view.layer addAnimation:[ self gernadeTrajectory] forKey:@"position"];
        
        [UIView animateWithDuration:1 animations:^{
            view.alpha =.99 ;
        } completion:^(BOOL finished) {
            [view.layer removeAllAnimations];
            imageView.image = nil;
            [imageView removeFromSuperview];
            [view removeFromSuperview];
        }];
    }
    if (type == 8) {
        self.startPoint = point;
    }
    if (type == 9) {
        self.endPoint = point;
    }
    if (type == 10) {
        UIView *view = [[UIView alloc] initWithFrame:CGRectMake(point.x, point.y, 1, 1)];
        view.backgroundColor = [UIColor clearColor];
        view.clipsToBounds = NO;
        view.alpha = 1;
        
        CAEmitterLayer* emitter = [CAEmitterLayer new];
        emitter.seed = rand();
        emitter.emitterPosition = CGPointMake(5, 1);
        emitter.emitterShape = kCAEmitterLayerPoint;
        emitter.emitterMode = kCAEmitterLayerVolume;
        emitter.emitterSize = CGSizeMake(10, 1);
        
        emitter.emitterCells = @[[self makeSparks:lR]];
        [view.layer insertSublayer:emitter atIndex:0];
        [self.view addSubview:view];
        [UIView animateWithDuration:.3 animations:^{
            view.alpha = 0;
        } completion:^(BOOL finished) {
            [[view.layer.sublayers objectAtIndex:0] removeFromSuperlayer];
            [view removeFromSuperview];
            
        }];

    }
    if (type == 11) {
        UIView *view = [[UIView alloc] initWithFrame:CGRectMake(point.x - 25, point.y - 25, 50, 50)];
        UIImageView *imageView = [[UIImageView alloc] initWithImage:[self makeBubble]];
        [view addSubview:imageView];
        [self.view addSubview:view];
        
        [UIView animateWithDuration:.7 delay:0 options:UIViewAnimationOptionCurveEaseInOut | UIViewAnimationOptionRepeat | UIViewAnimationOptionAutoreverse animations:^{
            view.transform = CGAffineTransformMakeRotation(3.14);
        } completion:nil];
    }
    if (type == 12) {
        exclaimView *e = [[exclaimView alloc] initWithFrame:CGRectMake(point.x - 12.5, point.y - 15, 25, 30)];
        [self.view addSubview:e];
        e.clipsToBounds = NO;
        [UIView animateWithDuration:2 animations:^{
            e.alpha = 0;
        } completion:^(BOOL finished) {
            [e removeFromSuperview];
        }];
    }
    if (type == 13) {
        UIView *view = [[UIView alloc] initWithFrame:CGRectMake(point.x - 10, point.y - 10, 20, 20)];
        UIImageView *imageView = [[UIImageView alloc] initWithImage:[self makeSquiggles]];
        [view addSubview:imageView];
        [self.view addSubview:view];
        
        [UIView animateWithDuration:2 animations:^{
            imageView.alpha = 0;
        } completion:^(BOOL finished) {
            [imageView removeFromSuperview];
            imageView.image = nil;
            [view removeFromSuperview];
        }];
    }
    if (type == 14) {
        musicView *m = [[musicView alloc] initWithFrame:CGRectMake(point.x - 12.5, point.y - 15, 25, 30)];
        [self.view addSubview:m];
        m.clipsToBounds = NO;
        [UIView animateWithDuration:2 animations:^{
            m.alpha = 0;
        } completion:^(BOOL finished) {
            [m removeFromSuperview];
        }];
    }
    if (type == 15) {
        UIView *view = [[UIView alloc] initWithFrame:CGRectMake(point.x - 10, point.y - 10, 30, 20)];
        UIImageView *imageView = [[UIImageView alloc] initWithImage:[self makeSignal]];
        [view addSubview:imageView];
        [self.view addSubview:view];
        
        [UIView animateWithDuration:2 animations:^{
            imageView.alpha = 0;
        } completion:^(BOOL finished) {
            [imageView removeFromSuperview];
            imageView.image = nil;
            [view removeFromSuperview];
        }];
    }


}

# pragma mark - Accessor Methods

- (void)fireEffect:(CGPoint)point{
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(point.x - 12.5, point.y - 12.5, 23, 23)];
    UIImageView *imageView = [[UIImageView alloc] initWithImage:[self makeFire]];
    [view addSubview:imageView];
    [self.view addSubview:view];
}

- (void)debrisEffect: (CGPoint)point{
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(point.x - 5, point.y, 10, 1)];
    view.backgroundColor = [UIColor clearColor];
    view.clipsToBounds = NO;
    view.alpha = 1;
    
    CAEmitterLayer *emitter = [CAEmitterLayer new];
    emitter.emitterPosition = CGPointMake(5, 1);
    emitter.seed = rand();
    emitter.emitterShape = kCAEmitterLayerRectangle;
    emitter.emitterMode = kCAEmitterLayerVolume;
    emitter.emitterSize = CGSizeMake(10, 1);
    
    emitter.emitterCells = @[[self makeDebris]];
    [view.layer insertSublayer:emitter atIndex:0];
    [self.view addSubview:view];
    [UIView animateWithDuration:.5 animations:^{
        view.alpha = 0;
    } completion:^(BOOL finished) {
        [[view.layer.sublayers objectAtIndex:0] removeFromSuperlayer];
        [view removeFromSuperview];
        emitter.emitterCells = nil;
    }];
    view = NULL;
    emitter = NULL;
}

- (void)exclaimationEffect:(CGPoint)point{
    exclaimView *e = [[exclaimView alloc] initWithFrame:CGRectMake(point.x - 12.5, point.y - 15, 25, 30)];
    [self.view addSubview:e];
    e.clipsToBounds = NO;
    [UIView animateWithDuration:2 animations:^{
        e.alpha = 0;
    } completion:^(BOOL finished) {
        [e removeFromSuperview];
    }];
    e = NULL;
}

- (void)angerEffect:(CGPoint)point{
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(point.x - 10, point.y - 10, 20, 20)];
    UIImageView *imageView = [[UIImageView alloc] initWithImage:[self makeSquiggles]];
    [view addSubview:imageView];
    [self.view addSubview:view];
    
    [UIView animateWithDuration:2 animations:^{
        imageView.alpha = 0;
    } completion:^(BOOL finished) {
        [imageView removeFromSuperview];
        imageView.image = nil;
        [view removeFromSuperview];
    }];
    view = NULL;
    imageView = NULL;
}

- (void)bulletEffect:(CGPoint)point :(CGPoint)ePoint{
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(point.x -3, point.y - 3, 6, 6)];
    UIImageView *imageView = [[UIImageView alloc] initWithImage:[self makeBullet]];
    [view addSubview:imageView];
    [self.view addSubview:view];
    [UIView animateWithDuration:.5 delay:0 options:UIViewAnimationOptionCurveLinear animations:^{
        view.center = ePoint;
    } completion:^(BOOL finished) {
        imageView.image = nil;
        [imageView removeFromSuperview];
        [view removeFromSuperview];
    }];
    view = NULL;
    imageView = NULL;
}

- (void)smokeEffect: (CGPoint)point{
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(point.x, point.y, 1, 1)];
    view.backgroundColor = [UIColor clearColor];
    view.clipsToBounds = NO;
    view.alpha = 1;
    
    CAEmitterLayer* emitter = [CAEmitterLayer new];
    emitter.seed = rand();
    emitter.emitterPosition = CGPointMake(5, 1);
    emitter.emitterShape = kCAEmitterLayerPoint;
    emitter.emitterMode = kCAEmitterLayerVolume;
    emitter.emitterSize = CGSizeMake(10, 1);
    
    emitter.emitterCells = @[[self makeSmoke]];
    [view.layer insertSublayer:emitter atIndex:0];
    [self.view addSubview:view];
    [UIView animateWithDuration:1 animations:^{
        view.alpha = 0;
    } completion:^(BOOL finished) {
        [[view.layer.sublayers objectAtIndex:0] removeFromSuperlayer];
        [view removeFromSuperview];
    }];
    emitter = NULL;
    view = NULL;
}

- (void)sparkEffect:(CGPoint)point :(int)leftRight{
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(point.x, point.y, 1, 1)];
    view.backgroundColor = [UIColor clearColor];
    view.clipsToBounds = NO;
    view.alpha = 1;
    
    CAEmitterLayer* emitter = [CAEmitterLayer new];
    emitter.seed = rand();
    emitter.emitterPosition = CGPointMake(5, 1);
    emitter.emitterShape = kCAEmitterLayerPoint;
    emitter.emitterMode = kCAEmitterLayerVolume;
    emitter.emitterSize = CGSizeMake(10, 1);
    // if leftRight = -1 it goes to the right. If leftRight = 1 it goes to the left
    emitter.emitterCells = @[[self makeSparks:leftRight]];
    [view.layer insertSublayer:emitter atIndex:0];
    [self.view addSubview:view];
    [UIView animateWithDuration:.3 animations:^{
        view.alpha = 0;
    } completion:^(BOOL finished) {
        [[view.layer.sublayers objectAtIndex:0] removeFromSuperlayer];
        [view removeFromSuperview];
    }];
    view = NULL;
    emitter = NULL;
}

- (void)musicEffect:(CGPoint)point{
    musicView *m = [[musicView alloc] initWithFrame:CGRectMake(point.x - 12.5, point.y - 15, 25, 30)];
    [self.view addSubview:m];
    m.clipsToBounds = NO;
    [UIView animateWithDuration:2 animations:^{
        m.alpha = 0;
        m.transform = CGAffineTransformMake(1, 0, 0, 1, 0, -20);
    } completion:^(BOOL finished) {
        [m removeFromSuperview];
    }];
    m = NULL;
}

# pragma mark - Miscellaneous

- (CAKeyframeAnimation*)gernadeTrajectory{
    CGMutablePathRef p = CGPathCreateMutable();
    CGPathMoveToPoint(p, NULL, startPoint.x, startPoint.y);
    CGPoint midpoint;
    midpoint.y = -midpoint.x / 4;
    if (startPoint.x > endPoint.x) {
        midpoint.x = (startPoint.x - endPoint.x) /2;
         CGPathAddQuadCurveToPoint(p, NULL, endPoint.x + midpoint.x, midpoint.y, endPoint.x, endPoint.y);
    }else {
        midpoint.x = (endPoint.x - startPoint.x) /2;
         CGPathAddQuadCurveToPoint(p, NULL, startPoint.x + midpoint.x, midpoint.y, endPoint.x, endPoint.y);
    }
    midpoint.y = -midpoint.x /4;
    
    CAKeyframeAnimation *animation;
    
    animation=[CAKeyframeAnimation animationWithKeyPath:@"position"];
    animation.path=p;
    animation.duration= 1;
    animation.timingFunction = [CAMediaTimingFunction functionWithName:kCAAnimationLinear];
    animation.fillMode = kCAFillModeForwards;
    animation.removedOnCompletion = NO;
    //CGPathRelease(p);
    
    return animation;
}

- (float)angleFunction{
    float x = endPoint.x - startPoint.x;
    float y = endPoint.y - startPoint.y;
    float angle = tanf(y/x);
    if (startPoint.x < endPoint.x) {
        angle += 1.57;
    }
    if (startPoint.x > endPoint.x) {
        angle -= 1.57;
    }
    if ((y/x) > 1 && startPoint.y > endPoint.y) {
        angle = -atanf(x/y);
    }
    if ((y/x) > 1 && endPoint.y > startPoint.y) {
        angle = -atanf(x/y) - 3.14;
    }
    if ((y/x) < -1 && endPoint.y > startPoint.y) {
        angle = -atanf(x/y) -3.14;
    }
    if ((y/x) < -1 && startPoint.y > endPoint.y) {
        angle = -atanf(x/y);
    }

    return angle;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

@implementation exclaimView

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
    CGContextSetFillColorWithColor(context, [[UIColor magentaColor]CGColor]);
    CGContextSetShadowWithColor(context, CGSizeMake(0, 0), 3, [[UIColor magentaColor]CGColor]);
    CGContextSetLineWidth(context, 1);
    
    CGContextSelectFont(context, "Zapfino", 20, kCGEncodingMacRoman);
    CGContextSetCharacterSpacing(context, 5);
    CGContextSetTextMatrix(context, CGAffineTransformMakeScale(1.0, -1.0));
    CGContextSetTextDrawingMode(context, kCGTextFill);
    CGContextShowTextAtPoint(context, 3, 27, "!", 1);

    CGContextStrokePath(context);

}

@end

@implementation musicView

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
    CGContextSetFillColorWithColor(context, [[UIColor magentaColor]CGColor]);
    CGContextSetShadowWithColor(context, CGSizeMake(0, 0), 3, [[UIColor magentaColor]CGColor]);
    CGContextSetLineWidth(context, 1);
    
    CGContextAddEllipseInRect(context, CGRectMake(3, 10, 3, 2));
    CGContextAddEllipseInRect(context, CGRectMake(8, 11, 3, 2));
    CGContextFillPath(context);
    CGContextMoveToPoint(context, 6, 11);
    CGContextAddLineToPoint(context, 6, 3);
    CGContextAddLineToPoint(context, 11, 4);
    CGContextAddLineToPoint(context, 11, 12);
    CGContextStrokePath(context);
    
}

@end

@implementation effectClass

@end



