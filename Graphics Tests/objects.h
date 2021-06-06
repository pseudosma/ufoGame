//
//  objects.h
//  Graphics Tests
//
//  Created by DM on 7/23/13.
//  Copyright (c) 2013 DM. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

@interface hoeView : UIView

@end

@interface shotgunView : UIView

@end

@interface handgunView : UIView

@end

@interface batonView : UIView

@end

@interface whistleView : UIView

@end

@interface donutView : UIView

@end

@interface newspaperView : UIView

@end

@interface walkieTalkieView : UIView

@end

@interface rifleView : UIView

@end

@interface bazookaView : UIView

@end

@interface liquorBottleView : UIView

@end

@interface cameraView : UIView

@end

//dynamic objects

@interface yoyoView : UIImageView{
    UIImage *y1;
    UIImage *y2;
    UIImage *y3;
    UIImage *y4;
    UIImage *y5;
    UIImage *y6;
    UIImage *y7;
    UIImage *y8;
    UIImage *y9;
    UIImage *y10;
    UIImage *y11;
}

@end

@interface seedView : UIView{
    CAEmitterCell *seed;
    CAEmitterLayer *seeds;
    UIImage *seedling;
}
- (void)animate;
@end

@interface cigaretteSecondLayer : UIView
@end

@interface cigarette : UIView{
    CAEmitterCell *smoke;
    CAEmitterLayer *cigaretteSmoke;
    cigaretteSecondLayer *csl;
    UIView *smokeHolder;
    
}
- (void)animate;
- (void)deanimate;
@end

