//
//  characterViewController.m
//  Graphics Tests
//
//  Created by DM on 6/10/14.
//  Copyright (c) 2014 DM. All rights reserved.
//

#import "characterViewController.h"

@interface characterViewController ()

@end

@implementation characterViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
    }
    return self;
    self.targetedArea = CGRectZero;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

# pragma mark - overridden base methods -

- (void)stop{
    
}

- (void)walk{
    
}

- (void)panic{
    
}

- (void)run{
    
}

- (void)panicRun{
    
}

- (void)fall{
    
}

- (void)recover{
    
}

- (void)changeOrientation{
    
}

- (void)pause{
    
}

- (void)resume{
    
}

- (void)flair1{
    
}

- (void)flair2{
    
}

- (void)flair3{
    
}

- (void)updateCurrentState{
    
}

- (void)charge{
    
}

- (void)attack:(CGPoint) target{
    
}

- (void)superAttack:(CGPoint) target{
    
}

- (void)superMegaAttack:(CGPoint) target{
    
}

- (void)callBackup{
    
}

@end
