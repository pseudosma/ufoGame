//
//  menu.h
//  Graphics Tests
//
//  Created by DM on 2/28/13.
//  Copyright (c) 2013 DM. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>
#import "humanViewController.h"
#import "farmerViewController.h"
#import "copViewController.h"
#import "FBIViewController.h"
#import "militaryViewController.h"
#import "mountieViewController.h"
#import "investigatorViewController.h"
#import "laheyViewController.h"
#import "reporterViewController.h"
#import "femaleFBIViewController.h"
#import "detectiveViewController.h"
#import "cultyViewController.h"
#import "conspiratorViewController.h"
#import "suicideCultyViewController.h"

@interface menu : UIViewController {
    humanViewController *human;
    farmerViewController *farmer;
    copViewController *cop;
    FBIViewController *mulder;
    militaryViewController *military;
    mountieViewController *mountie;
    investigatorViewController *tom;
    laheyViewController *lahey;
    reporterViewController *kolchac;
    femaleFBIViewController *scully;
    detectiveViewController *detective;
    cultyViewController *heavensGate;
    conspiratorViewController *ancientAliensGuy;
    suicideCultyViewController *suicideGuy;
    UITapGestureRecognizer *tap;
    CGPoint target;
}
- (IBAction)stop:(id)sender;
- (IBAction)walk:(id)sender;
- (IBAction)panic:(id)sender;
- (IBAction)run:(id)sender;
- (IBAction)panicRun:(id)sender;
- (IBAction)fall:(id)sender;
- (IBAction)recover:(id)sender;
- (IBAction)pause:(id)sender;
- (IBAction)resume:(id)sender;
- (IBAction)changeOrientation:(id)sender;
- (IBAction)flair1:(id)sender;
- (IBAction)flair2:(id)sender;
- (IBAction)flair3:(id)sender;
- (IBAction)attack:(id)sender;
- (IBAction)segue:(id)sender;
- (IBAction)target:(id)sender;
- (IBAction)callBackup:(id)sender;

@end
