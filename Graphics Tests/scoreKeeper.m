//
//  scoreKeeper.m
//  Graphics Tests
//
//  Created by DM on 6/8/13.
//  Copyright (c) 2013 DM. All rights reserved.
//

#import "scoreKeeper.h"

@implementation scoreKeeper
@synthesize score;

- (void)viewDidLoad
{
    score = 0;
    self.view.backgroundColor = [UIColor clearColor];
    self.view.clipsToBounds = NO;
    
    cowVC = [[cowViewController alloc] init];
    [self addChildViewController:cowVC];
    
    cowPlaceHolder = [[UIView alloc] initWithFrame:CGRectMake(0, -20, 55, 65)];
    [self.view addSubview:cowPlaceHolder];
    [cowPlaceHolder addSubview:cowVC.view];
    
    cowPlaceHolder.alpha = .5;
    cowPlaceHolder.transform = CGAffineTransformMakeScale(.5, .5);
    
    x = [[UILabel alloc] initWithFrame:CGRectMake(57, 5, 10, 10)];
    x.backgroundColor = [UIColor clearColor];
    x.text = @"x";
    x.textColor = [UIColor magentaColor];
    x.font = [UIFont fontWithName:@"BradleyHandITCTT-Bold" size:20];
    x.alpha =.5;
    [self.view addSubview:x];
    
    p1 = [[UILabel alloc] initWithFrame:CGRectMake(75, 0, 20, 20)];
    p1.backgroundColor = [UIColor clearColor];
    value1 = 0;
    s1 = [NSString stringWithFormat:@"%d" , value1];
    p1.text = s1;
    p1.textColor = [UIColor cyanColor];
    p1.font = [UIFont fontWithName:@"BradleyHandITCTT-Bold" size:30];
    p1.alpha =.5;
    [self.view addSubview:x];

    p2 = [[UILabel alloc] initWithFrame:CGRectMake(95, 0, 20, 20)];
    p2.backgroundColor = [UIColor clearColor];
    value2 = 0;
    s2 = [NSString stringWithFormat:@"%d" , value2];
    p2.text = s2;
    p2.textColor = [UIColor yellowColor];
    p2.font = [UIFont fontWithName:@"BradleyHandITCTT-Bold" size:30];
    p2.alpha =.5;
    
    [self.view addSubview:x];
    [self.view addSubview:p1];
    [self.view addSubview:p2];
    
    [self animateViews:p2 :p1 :x :cowPlaceHolder];
    
    [super viewDidLoad];
}

- (void)incrementScore{
    
    ++value2;
    
    if (value2 == 10) {
        ++value1;
        value2 = 0;
        s1 = [NSString stringWithFormat:@"%d" , value1];
        p1.text = s1;
        [p1 setNeedsDisplay];
    }
    if (value1 == 1) {
        [cowVC walk];
    }
    if (value1 == 2) {
        [cowVC run];
    }
    if (value1 >= 3) {
        [cowVC charge];
    }
    
    s2 = [NSString stringWithFormat:@"%d" , value2];
    p2.text = s2;
    [p2 setNeedsDisplay];
    
    
}

- (void)animateViews:(UIView *)one :(UIView *)two :(UIView *)three : (UIView *)four{
    [UIView animateWithDuration:5 delay:0 options:UIViewAnimationOptionCurveLinear | UIViewAnimationOptionBeginFromCurrentState animations:^{
        one.transform = CGAffineTransformConcat(CGAffineTransformMakeTranslation(0, 5), CGAffineTransformMakeRotation(-.3));
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:5 delay:0 options:UIViewAnimationOptionBeginFromCurrentState | UIViewAnimationOptionCurveLinear | UIViewAnimationOptionAutoreverse | UIViewAnimationOptionRepeat animations:^{
            one.transform = CGAffineTransformConcat(CGAffineTransformMakeTranslation(0, -5), CGAffineTransformMakeRotation(.3));
        } completion:nil];
    }];
    [UIView animateWithDuration:5 delay:2 options:UIViewAnimationOptionCurveLinear | UIViewAnimationOptionBeginFromCurrentState animations:^{
        two.transform = CGAffineTransformConcat(CGAffineTransformMakeTranslation(0, 5), CGAffineTransformMakeRotation(-.3));
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:5 delay:0 options:UIViewAnimationOptionBeginFromCurrentState | UIViewAnimationOptionCurveLinear | UIViewAnimationOptionAutoreverse | UIViewAnimationOptionRepeat animations:^{
            two.transform = CGAffineTransformConcat(CGAffineTransformMakeTranslation(0, -5), CGAffineTransformMakeRotation(.3));
        } completion:nil];
    }];
    [UIView animateWithDuration:5 delay:3 options:UIViewAnimationOptionCurveLinear | UIViewAnimationOptionBeginFromCurrentState animations:^{
        three.transform = CGAffineTransformConcat(CGAffineTransformMakeTranslation(0, 5), CGAffineTransformMakeRotation(-.3));
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:5 delay:0 options:UIViewAnimationOptionBeginFromCurrentState | UIViewAnimationOptionCurveLinear | UIViewAnimationOptionAutoreverse | UIViewAnimationOptionRepeat animations:^{
            three.transform = CGAffineTransformConcat(CGAffineTransformMakeTranslation(0, -5), CGAffineTransformMakeRotation(.3));
        } completion:nil];
    }];
    [UIView animateWithDuration:5 delay:1 options:UIViewAnimationOptionCurveLinear | UIViewAnimationOptionBeginFromCurrentState animations:^{
        four.transform = CGAffineTransformConcat(CGAffineTransformConcat(CGAffineTransformMakeTranslation(0, 5), CGAffineTransformMakeRotation(-.3)), CGAffineTransformMakeScale(0.5, 0.5));
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:5 delay:0 options:UIViewAnimationOptionBeginFromCurrentState | UIViewAnimationOptionCurveLinear | UIViewAnimationOptionAutoreverse | UIViewAnimationOptionRepeat animations:^{
            four.transform = CGAffineTransformConcat(CGAffineTransformConcat(CGAffineTransformMakeTranslation(0, -5), CGAffineTransformMakeRotation(.3)), CGAffineTransformMakeScale(0.5, 0.5));
        } completion:nil];
    }];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
