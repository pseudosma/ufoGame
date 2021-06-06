//
//  UFOViewController.m
//  Graphics Tests
//
//  Created by DM on 3/7/13.
//  Copyright (c) 2013 DM. All rights reserved.
//

#import "UFOViewController.h"

@implementation UFOViewController

- (void)viewDidLoad
{
    
    self.view.clipsToBounds = NO;
    self.view.frame = CGRectMake(0, 0, 130, 60);
    self.view.bounds = CGRectMake(0, 0, 130, 60);
    self.view.backgroundColor = [UIColor clearColor];
    
    flairView1 = [[UFOFlair1View alloc] initWithFrame:CGRectMake(0, 0, 130, 60)];
    [self.view addSubview:flairView1];
    
    flairView2 = [[UFOFlair2View alloc] initWithFrame:CGRectMake(0, 0, 130, 60)];
    [self.view addSubview:flairView2];

    ufo = [[UFOView alloc] initWithFrame:CGRectMake(0, 0, 130, 60)];
    backing = [[UFOBackingView alloc] initWithFrame:CGRectMake(0, 0, 130, 60)];
    blueBacking = [[UFOBlueBackingView alloc] initWithFrame:CGRectMake(0, 0, 130, 60)];
    [self.view addSubview:ufo];
    [ufo addSubview:backing];
    [ufo addSubview:blueBacking];
    backing.alpha = 0;
    blueBacking.alpha = 0;
    
    self.damage = 0;
    
    evc = [[effects alloc] init];
    [self addChildViewController:evc];
    [self.view addSubview:evc.view];
    
    [self defineAnimations];
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UIView Animations

- (void)goLeft{
    [UIView animateWithDuration:1.5 delay:0 options:UIViewAnimationOptionBeginFromCurrentState | UIViewAnimationCurveLinear animations:^{
        self.view.transform = CGAffineTransformMakeRotation(-.7);
    }completion:^(BOOL finished) {}];
    [UIView animateWithDuration:3 delay:0 options:UIViewAnimationOptionBeginFromCurrentState | UIViewAnimationCurveLinear animations:^{
        flairView1.transform = CGAffineTransformConcat(CGAffineTransformMakeScale(.95, .95), CGAffineTransformMakeTranslation(20, 15));
        flairView1.alpha = .6;
    }completion:^(BOOL finished) {}];
    [UIView animateWithDuration:2.5 delay:0 options:UIViewAnimationOptionBeginFromCurrentState | UIViewAnimationCurveLinear animations:^{
        flairView2.transform = CGAffineTransformConcat(CGAffineTransformMakeScale(.9, .9), CGAffineTransformMakeTranslation(40, 30));
        flairView2.alpha = .3;
    }completion:^(BOOL finished) {}];
}

- (void)goRight{
    [UIView animateWithDuration:1.5 delay:0 options:UIViewAnimationOptionBeginFromCurrentState | UIViewAnimationCurveLinear animations:^{
        self.view.transform = CGAffineTransformMakeRotation(.7);
    }completion:^(BOOL finished) {}];
    [UIView animateWithDuration:1.5 delay:0 options:UIViewAnimationOptionBeginFromCurrentState | UIViewAnimationCurveLinear animations:^{
        flairView1.transform = CGAffineTransformConcat(CGAffineTransformMakeScale(.95, .95), CGAffineTransformMakeTranslation(-20, 15));
        flairView1.alpha = .6;
    }completion:^(BOOL finished) {}];
    [UIView animateWithDuration:1.5 delay:0 options:UIViewAnimationOptionBeginFromCurrentState | UIViewAnimationCurveLinear animations:^{
        flairView2.transform = CGAffineTransformConcat(CGAffineTransformMakeScale(.9, .9), CGAffineTransformMakeTranslation(-40, 30));
        flairView2.alpha = .3;
    }completion:^(BOOL finished) {}];

}

- (void)leftSlow{
    
   [UIView animateWithDuration:.7 delay:0 options:UIViewAnimationOptionBeginFromCurrentState animations:^{
        self.view.transform = CGAffineTransformMakeRotation(.1);
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:.7 delay:0 options:UIViewAnimationOptionBeginFromCurrentState animations:^{
            self.view.transform = CGAffineTransformIdentity;
            ufo.transform = CGAffineTransformIdentity;
        } completion:^(BOOL finished) {}];
    }];
    [UIView animateWithDuration:.6 delay:0 options:UIViewAnimationOptionBeginFromCurrentState animations:^{
        flairView1.transform = CGAffineTransformConcat(CGAffineTransformMakeScale(.97, .97), CGAffineTransformMakeTranslation(-5, 1));
        flairView1.alpha = .8;
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:.6 delay:0 options:UIViewAnimationOptionBeginFromCurrentState animations:^{
            flairView1.transform = CGAffineTransformIdentity;
            flairView1.alpha = 1;
        } completion:^(BOOL finished) {}];
        
    }];
    [UIView animateWithDuration:.6 delay:0 options:UIViewAnimationOptionBeginFromCurrentState animations:^{
        flairView2.transform = CGAffineTransformConcat(CGAffineTransformMakeScale(.95, .95), CGAffineTransformMakeTranslation(-10, 3));
        flairView2.alpha =.5;
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:.6 delay:0 options:UIViewAnimationOptionBeginFromCurrentState animations:^{
            flairView2.transform = CGAffineTransformIdentity;
            flairView2.alpha =1;
        } completion:^(BOOL finished) {}];
    }];
}

- (void)rightSlow{
    
    [UIView animateWithDuration:.7 delay:0 options:UIViewAnimationOptionBeginFromCurrentState animations:^{
        self.view.transform = CGAffineTransformMakeRotation(-.1);
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:.7 delay:0 options:UIViewAnimationOptionBeginFromCurrentState animations:^{
            self.view.transform = CGAffineTransformIdentity;
            ufo.transform = CGAffineTransformIdentity;
        } completion:^(BOOL finished) {}];
    }];
    [UIView animateWithDuration:.6 delay:0 options:UIViewAnimationOptionBeginFromCurrentState animations:^{
        flairView1.transform = CGAffineTransformConcat(CGAffineTransformMakeScale(.97, .97), CGAffineTransformMakeTranslation(5, 1));
        flairView1.alpha = .8;
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:.6 delay:0 options:UIViewAnimationOptionBeginFromCurrentState animations:^{
            flairView1.transform = CGAffineTransformIdentity;
            flairView1.alpha = 1;
        } completion:^(BOOL finished) {}];
        
    }];
    [UIView animateWithDuration:.6 delay:0 options:UIViewAnimationOptionBeginFromCurrentState animations:^{
        flairView2.transform = CGAffineTransformConcat(CGAffineTransformMakeScale(.95, .95), CGAffineTransformMakeTranslation(10, 3));
        flairView2.alpha =.5;
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:.6 delay:0 options:UIViewAnimationOptionBeginFromCurrentState animations:^{
            flairView2.transform = CGAffineTransformIdentity;
            flairView2.alpha =1;
        } completion:^(BOOL finished) {}];
    }];
}

- (void)rightStop{
    [UIView animateWithDuration:.6 delay:0 options:UIViewAnimationOptionBeginFromCurrentState animations:^{
        self.view.transform = CGAffineTransformMakeRotation(-.2);
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:.6 delay:0 options:UIViewAnimationOptionBeginFromCurrentState animations:^{
            self.view.transform = CGAffineTransformIdentity;
            ufo.transform = CGAffineTransformIdentity;
        } completion:^(BOOL finished) {}];
    }];
    [UIView animateWithDuration:.5 delay:0 options:UIViewAnimationOptionBeginFromCurrentState animations:^{
        flairView1.transform = CGAffineTransformConcat(CGAffineTransformMakeScale(.96, .96), CGAffineTransformMakeTranslation(7, 3));
        flairView1.alpha = .9;
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:.5 delay:0 options:UIViewAnimationOptionBeginFromCurrentState animations:^{
            flairView1.transform = CGAffineTransformIdentity;
            flairView1.alpha = 1;
        } completion:^(BOOL finished) {}];
        
    }];
    [UIView animateWithDuration:.5 delay:0 options:UIViewAnimationOptionBeginFromCurrentState animations:^{
        flairView2.transform = CGAffineTransformConcat(CGAffineTransformMakeScale(.95, .95), CGAffineTransformMakeTranslation(13, 6));
        flairView2.alpha =.6;
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:.5 delay:0 options:UIViewAnimationOptionBeginFromCurrentState animations:^{
            flairView2.transform = CGAffineTransformIdentity;
            flairView2.alpha =1;
        } completion:^(BOOL finished) {}];
    }];
}

- (void)leftStop{
    [UIView animateWithDuration:.6 delay:0 options:UIViewAnimationOptionBeginFromCurrentState animations:^{
        self.view.transform = CGAffineTransformMakeRotation(.2);
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:.6 delay:0 options:UIViewAnimationOptionBeginFromCurrentState animations:^{
            self.view.transform = CGAffineTransformIdentity;
            ufo.transform = CGAffineTransformIdentity;
        } completion:^(BOOL finished) {}];
    }];
    [UIView animateWithDuration:.5 delay:0 options:UIViewAnimationOptionBeginFromCurrentState animations:^{
        flairView1.transform = CGAffineTransformConcat(CGAffineTransformMakeScale(.96, .96), CGAffineTransformMakeTranslation(-7, 3));
        flairView1.alpha = .9;
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:.5 delay:0 options:UIViewAnimationOptionBeginFromCurrentState animations:^{
            flairView1.transform = CGAffineTransformIdentity;
            flairView1.alpha = 1;
        } completion:^(BOOL finished) {}];

    }];
    [UIView animateWithDuration:.5 delay:0 options:UIViewAnimationOptionBeginFromCurrentState animations:^{
        flairView2.transform = CGAffineTransformConcat(CGAffineTransformMakeScale(.95, .95), CGAffineTransformMakeTranslation(-13, 6));
        flairView2.alpha =.6;
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:.5 delay:0 options:UIViewAnimationOptionBeginFromCurrentState animations:^{
            flairView2.transform = CGAffineTransformIdentity;
            flairView2.alpha =1;
        } completion:^(BOOL finished) {}];
    }];
}

- (void)hardLeftStop{
    [UIView animateWithDuration:.5 delay:0 options:UIViewAnimationOptionBeginFromCurrentState animations:^{
        self.view.transform = CGAffineTransformMakeRotation(.3);
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:.5 delay:0 options:UIViewAnimationOptionBeginFromCurrentState animations:^{
            self.view.transform = CGAffineTransformIdentity;
            ufo.transform = CGAffineTransformIdentity;
        } completion:^(BOOL finished) {}];
    }];
    [UIView animateWithDuration:.4 delay:0 options:UIViewAnimationOptionBeginFromCurrentState animations:^{
        flairView1.transform = CGAffineTransformConcat(CGAffineTransformMakeScale(.95, .95), CGAffineTransformMakeTranslation(-10, 3));
        flairView1.alpha = .8;
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:.4 delay:0 options:UIViewAnimationOptionBeginFromCurrentState animations:^{
            flairView1.transform = CGAffineTransformIdentity;
            flairView1.alpha = 1;
        } completion:^(BOOL finished) {}];
        
    }];
    [UIView animateWithDuration:.4 delay:0 options:UIViewAnimationOptionBeginFromCurrentState animations:^{
        flairView2.transform = CGAffineTransformConcat(CGAffineTransformMakeScale(.93, .93), CGAffineTransformMakeTranslation(-20, 6));
        flairView2.alpha =.5;
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:.4 delay:0 options:UIViewAnimationOptionBeginFromCurrentState animations:^{
            flairView2.transform = CGAffineTransformIdentity;
            flairView2.alpha =1;
        } completion:^(BOOL finished) {}];
    }];
}

- (void)hardRightStop{
    [UIView animateWithDuration:.5 delay:0 options:UIViewAnimationOptionBeginFromCurrentState animations:^{
        self.view.transform = CGAffineTransformMakeRotation(-.3);
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:.5 delay:0 options:UIViewAnimationOptionBeginFromCurrentState animations:^{
            self.view.transform = CGAffineTransformIdentity;
            ufo.transform = CGAffineTransformIdentity;
        } completion:^(BOOL finished) {}];
    }];
    [UIView animateWithDuration:.4 delay:0 options:UIViewAnimationOptionBeginFromCurrentState animations:^{
        flairView1.transform = CGAffineTransformConcat(CGAffineTransformMakeScale(.95, .95), CGAffineTransformMakeTranslation(10, 3));
        flairView1.alpha = .8;
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:.4 delay:0 options:UIViewAnimationOptionBeginFromCurrentState animations:^{
            flairView1.transform = CGAffineTransformIdentity;
            flairView1.alpha = 1;
        } completion:^(BOOL finished) {}];
        
    }];
    [UIView animateWithDuration:.4 delay:0 options:UIViewAnimationOptionBeginFromCurrentState animations:^{
        flairView2.transform = CGAffineTransformConcat(CGAffineTransformMakeScale(.93, .93), CGAffineTransformMakeTranslation(20, 6));
        flairView2.alpha =.5;
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:.4 delay:0 options:UIViewAnimationOptionBeginFromCurrentState animations:^{
            flairView2.transform = CGAffineTransformIdentity;
            flairView2.alpha =1;
        } completion:^(BOOL finished) {}];
    }];
}

- (void)stop{
    [UIView animateWithDuration:.5 delay:0 options:UIViewAnimationOptionBeginFromCurrentState animations:^{
        self.view.transform = CGAffineTransformIdentity;
        ufo.transform = CGAffineTransformIdentity;
    } completion:^(BOOL finished) {}];
    [UIView animateWithDuration:.6 delay:0 options:UIViewAnimationOptionBeginFromCurrentState animations:^{
        flairView1.transform = CGAffineTransformIdentity;
        flairView1.alpha = 1;
    } completion:^(BOOL finished) {}];
    [UIView animateWithDuration:.7 delay:0 options:UIViewAnimationOptionBeginFromCurrentState animations:^{
        flairView2.transform = CGAffineTransformIdentity;
        flairView2.alpha =1;
    } completion:^(BOOL finished) {}];

}

- (void)abduct{
    [UIView animateWithDuration:.1 delay:0 options:UIViewAnimationOptionAutoreverse animations:^{
        backing.alpha = 1;
    } completion:^(BOOL finished) {
        backing.alpha = 0;
    }];
}

- (void)reject{
    self.cantAbduct = YES;
    [UIView animateWithDuration:.1 delay:0 options:UIViewAnimationOptionAutoreverse animations:^{
        blueBacking.alpha = 1;
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:4 delay:0 options:UIViewAnimationOptionCurveLinear animations:^{
            blueBacking.alpha = 0;
        } completion:^(BOOL finished) {
            self.cantAbduct = NO;
        }];
    }];
}

#pragma mark - CA Animations

- (void)takeDamage{
    [ufo.layer addAnimation:ufoAnimation forKey:nil];
    [flairView1.layer addAnimation:flair1Animation forKey:nil];
    [flairView2.layer addAnimation:flair2Animation forKey:nil];
}

- (void)defineAnimations{
    //used for taking damage animation
    a = [CABasicAnimation animationWithKeyPath:@"transform"];
    a.toValue = [NSNumber numberWithFloat:.2];
    a.fromValue = [NSNumber numberWithFloat:0];
    a.duration = .1;
    a.additive = YES;
    a.autoreverses = YES;
    a.valueFunction = [CAValueFunction functionWithName:kCAValueFunctionRotateZ];
    
    b = [CABasicAnimation animationWithKeyPath:@"transform"];
    b.toValue = [NSNumber numberWithFloat:-.2];
    b.fromValue = [NSNumber numberWithFloat:0];
    b.beginTime = .2;
    b.duration = .1;
    b.autoreverses = YES;
    b.additive = YES;
    b.valueFunction = [CAValueFunction functionWithName:kCAValueFunctionRotateZ];
    
    c = [CABasicAnimation animationWithKeyPath:@"transform"];
    c.toValue = [NSNumber numberWithFloat:-.1];
    c.fromValue = [NSNumber numberWithFloat:0];
    c.duration = .2;
    c.additive = YES;
    c.autoreverses = YES;
    c.valueFunction = [CAValueFunction functionWithName:kCAValueFunctionRotateZ];
    
    d = [CABasicAnimation animationWithKeyPath:@"transform"];
    d.toValue = [NSNumber numberWithFloat:.1];
    d.fromValue = [NSNumber numberWithFloat:0];
    d.beginTime = .4;
    d.duration = .2;
    d.autoreverses = YES;
    d.additive = YES;
    d.valueFunction = [CAValueFunction functionWithName:kCAValueFunctionRotateZ];
    
    e = [CABasicAnimation animationWithKeyPath:@"transform"];
    e.toValue = [NSNumber numberWithFloat:.1];
    e.fromValue = [NSNumber numberWithFloat:0];
    e.duration = .3;
    e.additive = YES;
    e.autoreverses = YES;
    e.valueFunction = [CAValueFunction functionWithName:kCAValueFunctionRotateZ];
    
    f = [CABasicAnimation animationWithKeyPath:@"transform"];
    f.toValue = [NSNumber numberWithFloat:-.1];
    f.fromValue = [NSNumber numberWithFloat:0];
    f.beginTime = .6;
    f.duration = .3;
    f.autoreverses = YES;
    f.additive = YES;
    f.valueFunction = [CAValueFunction functionWithName:kCAValueFunctionRotateZ];
    
    ufoAnimation = [CAAnimationGroup animation];
    ufoAnimation.animations = @[a,b];
    ufoAnimation.duration = .4;
    [ufoAnimation setRemovedOnCompletion:YES];
    
    flair1Animation = [CAAnimationGroup animation];
    flair1Animation.animations = @[c,d];
    flair1Animation.duration = .8;
    [flair1Animation setRemovedOnCompletion:YES];
    
    flair2Animation = [CAAnimationGroup animation];
    flair2Animation.animations = @[e,f];
    flair2Animation.duration = 1.2;
    [flair2Animation setRemovedOnCompletion:YES];
}

#pragma mark - Utility Methods

- (void)pause{
    CFTimeInterval pausedTime = [self.view.layer convertTime:CACurrentMediaTime() fromLayer:nil];
    self.view.layer.speed = 0.0;
    self.view.layer.timeOffset = pausedTime;
}

- (void)resume{
    CFTimeInterval pausedTime = [self.view.layer timeOffset];
    self.view.layer.speed = 1.0;
    self.view.layer.timeOffset = 0.0;
    self.view.layer.beginTime = 0.0;
    CFTimeInterval timeSincePause = [self.view.layer convertTime:CACurrentMediaTime() fromLayer:nil] - pausedTime;
    self.view.layer.beginTime = timeSincePause;
}

- (void)incrementDamage{
    //max damage is 10, so the ufo can take 10 bullets
    ++self.damage;
    if (self.damage == 5) {
        [evc fireEffect:CGPointMake(self.view.center.x - 20, self.view.center.y - 20)];
    };
    if (self.damage == 7) {
        [evc fireEffect:CGPointMake(self.view.center.x + 30, self.view.center.y - 10)];
    };
    if (self.damage == 9) {
        [evc fireEffect:CGPointMake(self.view.center.x - 40, self.view.center.y - 10)];
    };
    if (self.damage == 10) {
        //death
    };
}

@end
