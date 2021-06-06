//
//  timerOperation.m
//  Graphics Tests
//
//  Created by DM on 7/13/13.
//  Copyright (c) 2013 DM. All rights reserved.
//

#import "timerOperation.h"


@implementation timerOperation

-(void)startTimer{
    timer = [NSTimer scheduledTimerWithTimeInterval:.2 target:self selector:@selector(tick:) userInfo:nil repeats:YES];
    [[NSRunLoop currentRunLoop] addTimer:timer forMode: NSRunLoopCommonModes];
    [[NSRunLoop currentRunLoop] run];
}

-(void)tick:(id)sender{
    ++timeValue;
    [self performSelectorOnMainThread:@selector(sendNotification:) withObject:[NSNotification notificationWithName:@"tick" object:self] waitUntilDone:YES];
    
    if (timeValue == 3 && self.ufoDamage > 5) {
        effectClass *effect = [[effectClass alloc] init];
        effect.type = smoke;
        effect.startPoint = CGPointMake(ufoXPosition, 60);
        [self effectCall:effect];
        effect = nil;
    }
    
    if (timeValue == 5) {
    
        [self performSelectorOnMainThread:@selector(sendNotification:) withObject:[NSNotification notificationWithName:@"tickTock" object:self] waitUntilDone:YES];
            timeValue = 0;
    }
}

- (void)update: (float)fViewContentOffset :(CGRect)boundingBox{
    ufoXPosition = fViewContentOffset;
    ufoBoundingBox = boundingBox;
    //NSLog(@"%f", ufoXPosition);
   // NSLog(@"%f", ufoBoundingBox.origin.x);
    
    for (characterViewController *charaVC in self.characterArray) {
        charaVC.xPosition = [charaVC.view.superview.layer.presentationLayer position].x;
        
        if (charaVC.behaviorType > 0) {
            charaVC.visualField = CGRectMake(charaVC.xPosition - 400, 0, 800, 320);
            //NSLog(@"%f", charaVC.visualField.origin.x);
        }
        
        if (charaVC.xPosition < fViewContentOffset) {
            charaVC.rDistance = closer;
        }
        else if (charaVC.xPosition > fViewContentOffset) {
            charaVC.rDistance = further;
        }
        
        if (self.gravityBeamOn == YES) {
            
            if (CGRectContainsPoint(self.gravityBeamLocation, CGPointMake([charaVC.view.superview.layer.presentationLayer position].x, [charaVC.view.superview.layer.presentationLayer position].y)) && charaVC.currentState == passive) {
                float x = [charaVC.view.superview.layer.presentationLayer position].x;
                float y = [charaVC.view.superview.layer.presentationLayer position].y;
                [charaVC.view.superview.layer removeAllAnimations];
                charaVC.view.superview.center = CGPointMake(x, y);
                charaVC.currentState = alerted;
                [charaVC updateCurrentState];
                effectClass *effect = [[effectClass alloc] init];
                effect.type = alert;
                effect.startPoint = CGPointMake(x, y - 50);
                [self effectCall:effect];
                CGRectIsNull(self.gravityBeamLocation);
                effect = nil;
            }
            if (CGRectContainsPoint(self.gravityBeamLocation, CGPointMake([charaVC.view.superview.layer.presentationLayer position].x, [charaVC.view.superview.layer.presentationLayer position].y)) && charaVC.currentState == scared) {
                float x = [charaVC.view.superview.layer.presentationLayer position].x;
                float y = [charaVC.view.superview.layer.presentationLayer position].y;
                [charaVC.view.superview.layer removeAllAnimations];
                charaVC.view.superview.center = CGPointMake(x, y);
                effectClass *effect = [[effectClass alloc] init];
                effect.type = alert;
                effect.startPoint = CGPointMake(x, y - 50);
                [self effectCall:effect];
                [self performSelector:@selector(toAlerted:) withObject:charaVC.view.superview afterDelay:0.1];
                CGRectIsNull(self.gravityBeamLocation);
                effect = nil;
            }
            if (CGRectContainsPoint(self.gravityBeamLocation, CGPointMake([charaVC.view.superview.layer.presentationLayer position].x, [charaVC.view.superview.layer.presentationLayer position].y)) && charaVC.currentState == attacking) {
                float x = [charaVC.view.superview.layer.presentationLayer position].x;
                float y = [charaVC.view.superview.layer.presentationLayer position].y;
                [charaVC.view.superview.layer removeAllAnimations];
                charaVC.view.superview.center = CGPointMake(x, y);
                charaVC.currentState = alerted;
                [charaVC updateCurrentState];
                effectClass *effect = [[effectClass alloc] init];
                effect.type = alert;
                effect.startPoint = CGPointMake(x, y - 50);
                [self effectCall:effect];
                [self performSelector:@selector(attackingToAlerted:) withObject:charaVC afterDelay:2];
                CGRectIsNull(self.gravityBeamLocation);
                effect = nil;
            }
            if (CGRectContainsPoint(ufoBoundingBox,CGPointMake([charaVC.view.superview.layer.presentationLayer position].x, [charaVC.view.superview.layer.presentationLayer position].y))) {
                NSNumber *behavior = [NSNumber numberWithInt:charaVC.behaviorType];
                NSDictionary *dictionary = [[NSDictionary alloc] initWithObjectsAndKeys:behavior,@"k1",nil];
                if (charaVC.behaviorType > 0) {
                    [self performSelectorOnMainThread:@selector(sendNotification:) withObject:[NSNotification notificationWithName:@"abductionHappened" object:nil userInfo:dictionary] waitUntilDone:NO];
                }
                else{
                    charaVC.currentState = abducted;
                    [charaVC updateCurrentState];
                    [charaVC removeFromParentViewController];
                    //charaVC = nil;
                    [charaVC.view.superview removeFromSuperview];
                    //charaVC.view.superview = nil;
                    [self performSelectorOnMainThread:@selector(sendNotification:) withObject:[NSNotification notificationWithName:@"abductionHappened" object:nil userInfo:dictionary] waitUntilDone:NO];
                }
                behavior = nil;
                dictionary = nil;
            }
            //attack if cow is abducted
            if (CGRectContainsRect(charaVC.visualField, ufoBoundingBox) && charaVC.behaviorType > 0 && !CGRectContainsRect(charaVC.visualField, self.gravityBeamLocation) && self.isAbductingCow == YES && charaVC.currentState == passive) {
                float x = [charaVC.view.superview.layer.presentationLayer position].x;
                float y = [charaVC.view.superview.layer.presentationLayer position].y;
                [charaVC.view.superview.layer removeAllAnimations];
                charaVC.view.superview.center = CGPointMake(x, y);
                charaVC.currentState = angry;
                [charaVC updateCurrentState];
                effectClass *effect = [[effectClass alloc] init];
                effect.type = anger;
                effect.startPoint = CGPointMake(x, y - 50);
                [self effectCall:effect];
                CGRectIsNull(self.gravityBeamLocation);
                [self performSelector:@selector(attackSignal) withObject:nil afterDelay:2];
                effect = nil;
            }
            //attack if human is abducted
            if (CGRectContainsRect(charaVC.visualField, ufoBoundingBox) && charaVC.behaviorType > 0 && !CGRectContainsRect(charaVC.visualField, self.gravityBeamLocation) && self.isAbductingHuman == YES && charaVC.currentState == passive && charaVC.behaviorType > 1) {
                float x = [charaVC.view.superview.layer.presentationLayer position].x;
                float y = [charaVC.view.superview.layer.presentationLayer position].y;
                [charaVC.view.superview.layer removeAllAnimations];
                charaVC.view.superview.center = CGPointMake(x, y);
                charaVC.currentState = angry;
                [charaVC updateCurrentState];
                effectClass *effect = [[effectClass alloc] init];
                effect.type = anger;
                effect.startPoint = CGPointMake(x, y - 50);
                [self effectCall:effect];
                CGRectIsNull(self.gravityBeamLocation);
                [self performSelector:@selector(attackSignal) withObject:nil afterDelay:2];
                effect = nil;
            }
        }
        //this one's not dependant on the gravity beam being on
        if (CGRectContainsRect(ufoBoundingBox, charaVC.targetedArea) && charaVC.didAttack == YES) {
            NSLog(@"hit");
            effectClass *effect = [[effectClass alloc] init];
            effect.type = sparks;
            if (charaVC.rDistance == closer) {
                effect.leftRight = 1;
                effect.startPoint = CGPointMake(charaVC.targetedArea.origin.x - 60, charaVC.targetedArea.origin.y + 30);
            }else if (charaVC.rDistance == further) {
                effect.leftRight = -1;
                effect.startPoint = CGPointMake(charaVC.targetedArea.origin.x + 60, charaVC.targetedArea.origin.y + 30);
            }
            [self effectCall:effect];
            charaVC.targetedArea = CGRectZero;
            charaVC.didAttack = NO;
            if (charaVC.behaviorType == 1) {
                [self fleeingChildViewController:charaVC.view.superview];
            }else if (charaVC.behaviorType > 1){
                charaVC.targetedArea = CGRectZero;
                charaVC.didAttack = NO;
                [charaVC attack:CGPointMake(ufoXPosition, 85)];
            }
        }else if (!CGRectContainsRect(ufoBoundingBox, charaVC.targetedArea) && charaVC.didAttack == YES) {
            NSLog(@"miss");
            NSLog(@"%f",charaVC.targetedArea.origin.x);
            NSLog(@"%f",charaVC.targetedArea.origin.y);
            NSLog(@"%f",ufoBoundingBox.origin.x);
            NSLog(@"%f",ufoBoundingBox.origin.y);
            charaVC.targetedArea = CGRectZero;
            charaVC.didAttack = NO;
            [charaVC attack:CGPointMake(ufoXPosition, 85)];
        }
    }
}

- (void)sendNotification:(NSNotification *)notification{
    [[NSNotificationCenter defaultCenter] postNotification:notification];
}

- (void)effectCall:(effectClass *)effect{
    NSDictionary *dictionary = [[NSDictionary alloc] initWithObjectsAndKeys:effect,@"k1",nil];
    [self performSelectorOnMainThread:@selector(sendNotification:) withObject:[NSNotification notificationWithName:@"effectCalled" object:nil userInfo:dictionary] waitUntilDone:NO];
    dictionary = nil;
}

- (void)main{
    [self startTimer];
    // a way to invalidate the timer will need to be added.
}


#pragma mark - Character movement methods -

- (void)fleeingChildViewController: (UIView *)view{
    for (characterViewController *charaVC in self.characterArray) {
        if (view.tag == charaVC.tag.intValue) {
            charaVC.currentState = scared;
            [charaVC updateCurrentState];
            if (charaVC.rDistance == closer) {
                charaVC.facing = [NSNumber numberWithFloat:1];
                [charaVC changeOrientation];
                [charaVC run];
                [UIView animateWithDuration:20 delay:0 options:UIViewAnimationOptionCurveEaseOut | UIViewAnimationOptionBeginFromCurrentState | UIViewAnimationOptionAllowUserInteraction animations:^{
                    view.center = CGPointMake([view.layer.presentationLayer position].x - 1500, 272.5);
                } completion:^(BOOL finished) {
                    charaVC.currentState = passive;
                    [charaVC updateCurrentState];
                }];
            }
            else{
                charaVC.facing = [NSNumber numberWithFloat:-1];
                [charaVC changeOrientation];
                [charaVC run];
                [UIView animateWithDuration:20 delay:0 options:UIViewAnimationOptionCurveEaseOut | UIViewAnimationOptionBeginFromCurrentState | UIViewAnimationOptionAllowUserInteraction animations:^{
                    view.center = CGPointMake([view.layer.presentationLayer position].x + 1500, 272.5);
                } completion:^(BOOL finished) {
                    charaVC.currentState = passive;
                    [charaVC updateCurrentState];
                }];
            }
        }
    }
}

- (void)scaredFleeingChildViewController: (UIView *)view{
    for (characterViewController *charaVC in self.characterArray) {
        if (view.tag == charaVC.tag.intValue) {
            charaVC.currentState = scared;
            [charaVC updateCurrentState];
            if (charaVC.rDistance == closer) {
                charaVC.facing = [NSNumber numberWithFloat:1];
                [charaVC changeOrientation];
                if (charaVC.behaviorType > 0) {
                    [charaVC panicRun];
                }else{
                    [charaVC run];
                }
                [UIView animateWithDuration:20 delay:0 options:UIViewAnimationOptionCurveEaseOut | UIViewAnimationOptionBeginFromCurrentState | UIViewAnimationOptionAllowUserInteraction animations:^{
                    view.center = CGPointMake([view.layer.presentationLayer position].x - 1500, 272.5);
                } completion:^(BOOL finished) {
                    charaVC.currentState = passive;
                    [charaVC updateCurrentState];
                }];
            }
            else{
                charaVC.facing = [NSNumber numberWithFloat:-1];
                [charaVC changeOrientation];
                if (charaVC.behaviorType > 0) {
                    [charaVC panicRun];
                }else{
                    [charaVC run];
                }
                [UIView animateWithDuration:20 delay:0 options:UIViewAnimationOptionCurveEaseOut | UIViewAnimationOptionBeginFromCurrentState | UIViewAnimationOptionAllowUserInteraction animations:^{
                    view.center = CGPointMake([view.layer.presentationLayer position].x + 1500, 272.5);
                } completion:^(BOOL finished) {
                    charaVC.currentState = passive;
                    [charaVC updateCurrentState];
                }];
            }
        }
    }
}

- (void)fallingChildViewController:(UIView *)view{
    for (characterViewController *charaVC in self.characterArray) {
        if (view.tag == charaVC.tag.intValue) {
            [charaVC fall];
            charaVC.currentState = falling;
            [charaVC updateCurrentState];
            [UIView animateWithDuration:(272.5 - [view.layer.presentationLayer position].y)/100 delay:0 options:UIViewAnimationOptionCurveEaseIn | UIViewAnimationOptionBeginFromCurrentState | UIViewAnimationOptionAllowUserInteraction animations:^{
                view.center = CGPointMake([view.layer.presentationLayer position].x, 272.5);
            } completion:^(BOOL finished) {
                effectClass *effect = [[effectClass alloc] init];
                effect.type = debris;
                effect.startPoint = CGPointMake(view.center.x, view.center.y + 18);
                [self effectCall:effect];
                [charaVC recover];
                [UIView animateWithDuration:1 delay:0 options:UIViewAnimationOptionCurveEaseIn | UIViewAnimationOptionBeginFromCurrentState animations:^{
                    view.center = CGPointMake([view.layer.presentationLayer position].x, view.center.y - 1);
                } completion:^(BOOL finished) {
                    [self scaredFleeingChildViewController: view];
                }];
                effect = nil;
            }];
        }
    }
}

- (void)toAlerted:(UIView *)view{
    float x = [view.layer.presentationLayer position].x;
    float y = [view.layer.presentationLayer position].y;
    [view.layer removeAllAnimations];
    view.center = CGPointMake(x, y);
    for (characterViewController *charaVC in self.characterArray) {
        if (view.tag == charaVC.tag.intValue) {
            charaVC.currentState = alerted;
            [charaVC updateCurrentState];
        }
    }
}

- (void)attackingToAlerted:(characterViewController *)charaVC{
    [charaVC updateCurrentState];
}

- (void)attackSignal{
    for (characterViewController *charaVC in self.characterArray) {
        if ((charaVC.currentState == attacking) && charaVC.behaviorType > 0) {
            [charaVC attack:CGPointMake(ufoXPosition, 85)];
        }
    }
}

@end
