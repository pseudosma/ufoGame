//
//  timeClock.m
//  Graphics Tests
//
//  Created by DM on 4/4/13.
//  Copyright (c) 2013 DM. All rights reserved.
//

#import "timeClock.h"

@implementation timeClock
@synthesize t1,colon,t2,t3,timerTimeAllocation;


- (void)viewDidLoad
{
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(update) name:@"tickTock" object:nil];
    self.view.bounds = CGRectMake(0, 0, 100, 50);
    self.view.frame = CGRectMake(0, 0, 100, 50);
    self.view.backgroundColor = [UIColor clearColor];
    
    [self makeTimer];
    
    [super viewDidLoad];

}

- (void)makeTimer{
    timedValue = 60 * self.timerTimeAllocation;
    [self changeColor];
    
    self.view.transform = CGAffineTransformMakeScale(1.5, 1.5);
    self.view.alpha = 0;
    
    t1 = [[UILabel alloc] initWithFrame:CGRectMake(10, 0, 20, 50)];
    value1 = self.timerTimeAllocation;
    v1 = [NSString stringWithFormat:@"%d" , value1];
    t1.text = v1;
    t1.font = [UIFont fontWithName:@"BradleyHandITCTT-Bold" size:30];
    t1.backgroundColor = [UIColor clearColor];
    t1.textColor = color;
    [self.view addSubview:t1];
    
    colon = [[UILabel alloc] initWithFrame:CGRectMake(35, 0, 10, 50)];
    colon.backgroundColor = [UIColor clearColor];
    colon.text = @":";
    colon.font = [UIFont fontWithName:@"BradleyHandITCTT-Bold" size:30];
    colon.textColor = color;
    [self.view addSubview:colon];
    
    t2 = [[UILabel alloc] initWithFrame:CGRectMake(55, 0, 20, 50)];
    t2.backgroundColor = [UIColor clearColor];
    value2 = 0;
    v2 = [NSString stringWithFormat:@"%d" , value2];
    t2.text = v2;
    t2.font = [UIFont fontWithName:@"BradleyHandITCTT-Bold" size:30];
    t2.textColor = color;
    [self.view addSubview:t2];
    
    t3 = [[UILabel alloc] initWithFrame:CGRectMake(80, 0, 20, 50)];
    t3.backgroundColor = [UIColor clearColor];
    value3 = 0;
    v3 = [NSString stringWithFormat:@"%d" , value3];
    t3.text = v3;
    t3.font = [UIFont fontWithName:@"BradleyHandITCTT-Bold" size:30];
    t3.textColor = color;
    [self.view addSubview:t3];
    
    [UIView animateWithDuration:.5 delay:0 options:UIViewAnimationOptionCurveLinear animations:^{
        self.view.alpha = .5;
        self.view.transform = CGAffineTransformMakeScale(1, 1);
    } completion:^(BOOL finished) {
        //t = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(update) userInfo:nil repeats:YES];
    }];
    
    [self startOtherAnimations:t1 :t2 :t3 :colon];
}

-(void)update{
    
    if (timedValue % 60 == 0) {
        -- value1;
        value2 = 6;
        
        [self changeColor];
        
        v1 = [NSString stringWithFormat:@"%d" , value1];
        t1.text = v1;
        t1.textColor = color;
        colon.textColor = color;
        [t1 setNeedsDisplay];
        [colon setNeedsDisplay];
        if (timedValue < 61) {
            [self startFranticAnimations:t1 :t2 :t3 :colon];
        }
        
        [self minusTenSeconds];
    }
    
    --timedValue;

    [self minusSeconds];
    v3 = [NSString stringWithFormat:@"%d" , value3];
    t3.text = v3;
    t3.textColor = color;
    [t3 setNeedsDisplay];
    v2 = [NSString stringWithFormat:@"%d" , value2];
    t2.text = v2;
    t2.textColor = color;
    [t2 setNeedsDisplay];
    if (timedValue == 0) {
        //[t invalidate];
        [self stopAnimations:t1 :t2 :t3 :colon];
        [[NSNotificationCenter defaultCenter] postNotificationName:@"timeUp" object:self];
    }
}

- (void)minusSeconds{
    if (timedValue % 10 == 0) {
        number = 0;
        value3 = 0;
        [self performSelector:@selector(minusTenSeconds) withObject:self afterDelay:0];
    }else{
        ++number;
        value3 = 10 - number;
    }
}

- (void)minusTenSeconds{
    --value2;
    if (timedValue == 30) {
        [self startSuperFranticAnimations:t1 :t2 :t3 :colon];
    }
    if (timedValue == 10) {
        [self startMostFranticAnimations:t1 :t2 :t3 :colon];
    }

}

- (void)changeColor{
    if (timedValue == 420) {
        color = [ UIColor yellowColor];
    }
    if (timedValue == 360) {
        color = [ UIColor cyanColor];
    }
    if (timedValue == 300) {
        color = [ UIColor magentaColor];
    }
    if (timedValue == 240) {
        color = [ UIColor yellowColor];
    }
    if (timedValue == 180) {
        color = [ UIColor cyanColor];
    }
    if (timedValue == 120) {
        color = [ UIColor magentaColor];
    }
    if (timedValue == 60) {
        color = [ UIColor yellowColor];
    }
}

- (void)startOtherAnimations:(UILabel *)a :(UILabel *)b :(UILabel *)c :(UILabel *)d{
    [UIView animateWithDuration:5 delay:0 options:UIViewAnimationOptionCurveLinear | UIViewAnimationOptionBeginFromCurrentState animations:^{
        a.transform = CGAffineTransformConcat(CGAffineTransformMakeTranslation(0, 5), CGAffineTransformMakeRotation(.3));
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:5 delay:0 options:UIViewAnimationOptionBeginFromCurrentState | UIViewAnimationOptionCurveLinear | UIViewAnimationOptionAutoreverse | UIViewAnimationOptionRepeat animations:^{
            a.transform = CGAffineTransformConcat(CGAffineTransformMakeTranslation(0, -5), CGAffineTransformMakeRotation(-.3));
        } completion:nil];
    }];
    [UIView animateWithDuration:5 delay:2 options:UIViewAnimationOptionCurveLinear | UIViewAnimationOptionBeginFromCurrentState animations:^{
        b.transform = CGAffineTransformConcat(CGAffineTransformMakeTranslation(0, 5), CGAffineTransformMakeRotation(.3));
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:5 delay:0 options:UIViewAnimationOptionBeginFromCurrentState | UIViewAnimationOptionCurveLinear | UIViewAnimationOptionAutoreverse | UIViewAnimationOptionRepeat animations:^{
            b.transform = CGAffineTransformConcat(CGAffineTransformMakeTranslation(0, -5), CGAffineTransformMakeRotation(-.3));
        } completion:nil];
    }];
    [UIView animateWithDuration:5 delay:3 options:UIViewAnimationOptionCurveLinear | UIViewAnimationOptionBeginFromCurrentState animations:^{
        c.transform = CGAffineTransformConcat(CGAffineTransformMakeTranslation(0, 5), CGAffineTransformMakeRotation(.3));
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:5 delay:0 options:UIViewAnimationOptionBeginFromCurrentState | UIViewAnimationOptionCurveLinear | UIViewAnimationOptionAutoreverse | UIViewAnimationOptionRepeat animations:^{
            c.transform = CGAffineTransformConcat(CGAffineTransformMakeTranslation(0, -5), CGAffineTransformMakeRotation(-.3));
        } completion:nil];
    }];
    [UIView animateWithDuration:5 delay:1 options:UIViewAnimationOptionCurveLinear | UIViewAnimationOptionBeginFromCurrentState animations:^{
        d.transform = CGAffineTransformConcat(CGAffineTransformMakeTranslation(0, 5), CGAffineTransformMakeRotation(.3));
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:5 delay:0 options:UIViewAnimationOptionBeginFromCurrentState | UIViewAnimationOptionCurveLinear | UIViewAnimationOptionAutoreverse | UIViewAnimationOptionRepeat animations:^{
            d.transform = CGAffineTransformConcat(CGAffineTransformMakeTranslation(0, -5), CGAffineTransformMakeRotation(-.3));
        } completion:nil];
    }];

}

- (void)startFranticAnimations:(UILabel *)a :(UILabel *)b :(UILabel *)c :(UILabel *)d{
    [UIView animateWithDuration:1 delay:0 options:UIViewAnimationOptionCurveLinear | UIViewAnimationOptionBeginFromCurrentState animations:^{
        a.transform = CGAffineTransformConcat(CGAffineTransformMakeTranslation(0, 6), CGAffineTransformMakeRotation(.2));
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:1 delay:0 options:UIViewAnimationOptionBeginFromCurrentState | UIViewAnimationOptionCurveLinear | UIViewAnimationOptionAutoreverse | UIViewAnimationOptionRepeat animations:^{
            a.transform = CGAffineTransformConcat(CGAffineTransformMakeTranslation(0, -6), CGAffineTransformMakeRotation(-.2));
        } completion:nil];
    }];
    [UIView animateWithDuration:2 delay:0 options:UIViewAnimationOptionCurveLinear | UIViewAnimationOptionBeginFromCurrentState animations:^{
        b.transform = CGAffineTransformConcat(CGAffineTransformMakeTranslation(0, 6), CGAffineTransformMakeRotation(.2));
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:1 delay:0 options:UIViewAnimationOptionBeginFromCurrentState | UIViewAnimationOptionCurveLinear | UIViewAnimationOptionAutoreverse | UIViewAnimationOptionRepeat animations:^{
            b.transform = CGAffineTransformConcat(CGAffineTransformMakeTranslation(0, -6), CGAffineTransformMakeRotation(-.2));
        } completion:nil];
    }];
    [UIView animateWithDuration:2.5 delay:0 options:UIViewAnimationOptionCurveLinear | UIViewAnimationOptionBeginFromCurrentState animations:^{
        c.transform = CGAffineTransformConcat(CGAffineTransformMakeTranslation(0, 6), CGAffineTransformMakeRotation(.2));
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:1 delay:0 options:UIViewAnimationOptionBeginFromCurrentState | UIViewAnimationOptionCurveLinear | UIViewAnimationOptionAutoreverse | UIViewAnimationOptionRepeat animations:^{
            c.transform = CGAffineTransformConcat(CGAffineTransformMakeTranslation(0, -6), CGAffineTransformMakeRotation(-.2));
        } completion:nil];
    }];
    [UIView animateWithDuration:1.5 delay:0 options:UIViewAnimationOptionCurveLinear | UIViewAnimationOptionBeginFromCurrentState animations:^{
        d.transform = CGAffineTransformConcat(CGAffineTransformMakeTranslation(0, 6), CGAffineTransformMakeRotation(.2));
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:1 delay:0 options:UIViewAnimationOptionBeginFromCurrentState | UIViewAnimationOptionCurveLinear | UIViewAnimationOptionAutoreverse | UIViewAnimationOptionRepeat animations:^{
            d.transform = CGAffineTransformConcat(CGAffineTransformMakeTranslation(0, -6), CGAffineTransformMakeRotation(-.2));
        } completion:nil];
    }];
    
}

- (void)startSuperFranticAnimations:(UILabel *)a :(UILabel *)b :(UILabel *)c :(UILabel *)d{
    [UIView animateWithDuration:.5 delay:0 options:UIViewAnimationOptionCurveLinear | UIViewAnimationOptionBeginFromCurrentState animations:^{
        a.transform = CGAffineTransformConcat(CGAffineTransformMakeTranslation(0, 7), CGAffineTransformMakeRotation(.1));
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:.5 delay:0 options:UIViewAnimationOptionBeginFromCurrentState | UIViewAnimationOptionCurveLinear | UIViewAnimationOptionAutoreverse | UIViewAnimationOptionRepeat animations:^{
            a.transform = CGAffineTransformConcat(CGAffineTransformMakeTranslation(0, -7), CGAffineTransformMakeRotation(-.1));
        } completion:nil];
    }];
    [UIView animateWithDuration:.7 delay:0 options:UIViewAnimationOptionCurveLinear | UIViewAnimationOptionBeginFromCurrentState animations:^{
        b.transform = CGAffineTransformConcat(CGAffineTransformMakeTranslation(0, 7), CGAffineTransformMakeRotation(.1));
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:.5 delay:0 options:UIViewAnimationOptionBeginFromCurrentState | UIViewAnimationOptionCurveLinear | UIViewAnimationOptionAutoreverse | UIViewAnimationOptionRepeat animations:^{
            b.alpha = .7;
            b.transform = CGAffineTransformConcat(CGAffineTransformMakeTranslation(0, -7), CGAffineTransformMakeRotation(-.1));
        } completion:nil];
    }];
    [UIView animateWithDuration:.8 delay:0 options:UIViewAnimationOptionCurveLinear | UIViewAnimationOptionBeginFromCurrentState animations:^{
        c.transform = CGAffineTransformConcat(CGAffineTransformMakeTranslation(0, 7), CGAffineTransformMakeRotation(.1));
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:.5 delay:0 options:UIViewAnimationOptionBeginFromCurrentState | UIViewAnimationOptionCurveLinear | UIViewAnimationOptionAutoreverse | UIViewAnimationOptionRepeat animations:^{
            c.alpha = .7;
            c.transform = CGAffineTransformConcat(CGAffineTransformMakeTranslation(0, -7), CGAffineTransformMakeRotation(-.1));
        } completion:nil];
    }];
    [UIView animateWithDuration:.6 delay:0 options:UIViewAnimationOptionCurveLinear | UIViewAnimationOptionBeginFromCurrentState animations:^{
        d.transform = CGAffineTransformConcat(CGAffineTransformMakeTranslation(0, 7), CGAffineTransformMakeRotation(.1));
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:.5 delay:0 options:UIViewAnimationOptionBeginFromCurrentState | UIViewAnimationOptionCurveLinear | UIViewAnimationOptionAutoreverse | UIViewAnimationOptionRepeat animations:^{
            d.transform = CGAffineTransformConcat(CGAffineTransformMakeTranslation(0, -7), CGAffineTransformMakeRotation(-.1));
        } completion:nil];
    }];
    
}

- (void)startMostFranticAnimations:(UILabel *)a :(UILabel *)b :(UILabel *)c :(UILabel *)d{
    [UIView animateWithDuration:.2 delay:0 options:UIViewAnimationOptionCurveLinear | UIViewAnimationOptionBeginFromCurrentState animations:^{
        a.transform = CGAffineTransformMakeTranslation(0, 8);
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:.3 delay:0 options:UIViewAnimationOptionBeginFromCurrentState | UIViewAnimationOptionCurveLinear | UIViewAnimationOptionAutoreverse | UIViewAnimationOptionRepeat animations:^{
            a.transform = CGAffineTransformMakeTranslation(0, -8);
        } completion:nil];
    }];
    [UIView animateWithDuration:.4 delay:0 options:UIViewAnimationOptionCurveLinear | UIViewAnimationOptionBeginFromCurrentState animations:^{
        b.transform = CGAffineTransformMakeTranslation(0, 8);
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:.3 delay:0 options:UIViewAnimationOptionBeginFromCurrentState | UIViewAnimationOptionCurveLinear | UIViewAnimationOptionAutoreverse | UIViewAnimationOptionRepeat animations:^{
            b.alpha = .5;
            b.transform = CGAffineTransformMakeTranslation(0, -8);
        } completion:nil];
    }];
    [UIView animateWithDuration:.5 delay:0 options:UIViewAnimationOptionCurveLinear | UIViewAnimationOptionBeginFromCurrentState animations:^{
        c.transform = CGAffineTransformMakeTranslation(0, 8);
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:.3 delay:0 options:UIViewAnimationOptionBeginFromCurrentState | UIViewAnimationOptionCurveLinear | UIViewAnimationOptionAutoreverse | UIViewAnimationOptionRepeat animations:^{
            c.alpha = .5;
            c.transform = CGAffineTransformMakeTranslation(0, -8);
        } completion:nil];
    }];
    [UIView animateWithDuration:.3 delay:0 options:UIViewAnimationOptionCurveLinear | UIViewAnimationOptionBeginFromCurrentState animations:^{
        d.transform = CGAffineTransformMakeTranslation(0, 8);
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:.3 delay:0 options:UIViewAnimationOptionBeginFromCurrentState | UIViewAnimationOptionCurveLinear | UIViewAnimationOptionAutoreverse | UIViewAnimationOptionRepeat animations:^{
            d.transform = CGAffineTransformMakeTranslation(0, -8);
        } completion:nil];
    }];
    
}
- (void)stopAnimations:(UILabel *)a :(UILabel *)b :(UILabel *)c :(UILabel *)d{
    [UIView animateWithDuration:.5 delay:0 options:UIViewAnimationOptionCurveLinear | UIViewAnimationOptionBeginFromCurrentState animations:^{
        a.alpha = 0;
        a.transform = CGAffineTransformConcat(CGAffineTransformConcat(CGAffineTransformMakeTranslation(10, -50), CGAffineTransformMakeScale(2, 2)), CGAffineTransformMakeRotation(3));
        b.alpha = 0;
        b.transform = CGAffineTransformConcat(CGAffineTransformConcat(CGAffineTransformMakeTranslation(-50, 10), CGAffineTransformMakeScale(2, 2)), CGAffineTransformMakeRotation(1.3));
        c.alpha = 0;
        c.transform = CGAffineTransformConcat(CGAffineTransformConcat(CGAffineTransformMakeTranslation(17, 14), CGAffineTransformMakeScale(2, 2)), CGAffineTransformMakeRotation(-9));
        d.alpha = 0;
        d.transform = CGAffineTransformConcat(CGAffineTransformConcat(CGAffineTransformMakeTranslation(-33, -44), CGAffineTransformMakeScale(2, 2)), CGAffineTransformMakeRotation(-7));
    } completion:nil];

}

- (void)didReceiveMemoryWarning
{
    //[[NSNotificationCenter defaultCenter] removeObserver:self];
    //[t invalidate];
    [super didReceiveMemoryWarning];
}

@end
