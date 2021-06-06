//
//  menu 4.h
//  Graphics Tests
//
//  Created by DM on 3/29/13.
//  Copyright (c) 2013 DM. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "effects.h"

@interface menu_4 : UIViewController{
    effects *evc;
    UITapGestureRecognizer *tap;
}


- (IBAction)fire:(id)sender;
- (IBAction)explosion:(id)sender;
- (IBAction)debris:(id)sender;
- (IBAction)smoke:(id)sender;
- (IBAction)bullet:(id)sender;
- (IBAction)missile:(id)sender;
- (IBAction)gernade:(id)sender;
- (IBAction)startPoint:(id)sender;
- (IBAction)endPoint:(id)sender;
- (IBAction)sparks:(id)sender;
- (IBAction)bubble:(id)sender;
- (IBAction)alerted:(id)sender;
- (IBAction)pissed:(id)sender;
- (IBAction)music:(id)sender;
- (IBAction)signal:(id)sender;
- (IBAction)changeDirection:(id)sender;
- (IBAction)segue:(id)sender;

@ property (nonatomic , retain) IBOutlet UIView *subView;

@end
