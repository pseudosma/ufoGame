//
//  menu.m
//  Graphics Tests
//
//  Created by DM on 2/28/13.
//  Copyright (c) 2013 DM. All rights reserved.
//

#import "menu.h"

@interface menu ()

@end

@implementation menu

- (void)viewDidLoad
{
    [self prefersStatusBarHidden];
    
    self.view.userInteractionEnabled = YES;
    UIView *subView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 50, 60)];
    subView.clipsToBounds = NO;
    UIView *subView1 = [[UIView alloc] initWithFrame:CGRectMake(60, 0, 50, 60)];
    subView1.clipsToBounds = NO;
    UIView *subView2 = [[UIView alloc] initWithFrame:CGRectMake(120, 0, 50, 60)];
    subView2.clipsToBounds = NO;
    UIView *subView3 = [[UIView alloc] initWithFrame:CGRectMake(180, 0, 50, 60)];
    subView3.clipsToBounds = NO;
    UIView *subView4 = [[UIView alloc] initWithFrame:CGRectMake(240, 0, 50, 60)];
    subView4.clipsToBounds = NO;
    UIView *subView5 = [[UIView alloc] initWithFrame:CGRectMake(300, 0, 50, 60)];
    subView5.clipsToBounds = NO;
    UIView *subView6 = [[UIView alloc] initWithFrame:CGRectMake(0, 90, 50, 60)];
    subView6.clipsToBounds = NO;
    UIView *subView7 = [[UIView alloc] initWithFrame:CGRectMake(60, 90, 50, 60)];
    subView7.clipsToBounds = NO;
    UIView *subView8 = [[UIView alloc] initWithFrame:CGRectMake(120, 90, 50, 60)];
    subView8.clipsToBounds = NO;
    UIView *subView9 = [[UIView alloc] initWithFrame:CGRectMake(180, 90, 50, 60)];
    subView9.clipsToBounds = NO;
    UIView *subView10 = [[UIView alloc] initWithFrame:CGRectMake(240, 90, 50, 60)];
    subView10.clipsToBounds = NO;
    UIView *subView11 = [[UIView alloc] initWithFrame:CGRectMake(300, 90, 50, 60)];
    subView11.clipsToBounds = NO;
    UIView *subView12 = [[UIView alloc] initWithFrame:CGRectMake(360, 0, 50, 60)];
    subView12.clipsToBounds = NO;
    UIView *subView13 = [[UIView alloc] initWithFrame:CGRectMake(360, 90, 50, 60)];
    subView13.clipsToBounds = NO;


    human = [[humanViewController alloc]init];
    farmer = [[farmerViewController alloc] init];
    farmer.xPosition = 85;
    cop = [[copViewController alloc] init];
    cop.xPosition = 145;
    mulder = [[FBIViewController alloc] init];
    mulder.xPosition = 205;
    scully = [[femaleFBIViewController alloc] init];
    scully.xPosition = 265;
    military = [[militaryViewController alloc] init];
    military.xPosition = 325;
    mountie = [[mountieViewController alloc] init];
    mountie.xPosition = 25;
    tom = [[investigatorViewController alloc] init];
    tom.xPosition = 85;
    lahey = [[laheyViewController alloc] init];
    lahey.xPosition = 145;
    kolchac = [[reporterViewController alloc] init];
    kolchac.xPosition = 205;
    detective = [[detectiveViewController alloc] init];
    detective.xPosition = 265;
    heavensGate = [[cultyViewController alloc] init];
    heavensGate.xPosition = 325;
    ancientAliensGuy = [[conspiratorViewController alloc] init];
    ancientAliensGuy.xPosition = 385;
    suicideGuy = [[suicideCultyViewController alloc] init];
    suicideGuy.xPosition = 385;
    
    [self addChildViewController:human];
    [self.view addSubview:subView];
    [subView addSubview:human.view];
    
    [self addChildViewController:farmer];
    [self.view addSubview:subView1];
    [subView1 addSubview:farmer.view];
    
    [self addChildViewController:cop];
    [self.view addSubview:subView2];
    [subView2 addSubview:cop.view];
    
    [self addChildViewController:mulder];
    [self.view addSubview:subView3];
    [subView3 addSubview:mulder.view];
    
    [self addChildViewController:scully];
    [self.view addSubview:subView4];
    [subView4 addSubview:scully.view];
    
    [self addChildViewController:military];
    [self.view addSubview:subView5];
    [subView5 addSubview:military.view];
    
    [self addChildViewController:mountie];
    [self.view addSubview:subView6];
    [subView6 addSubview:mountie.view];
    
    [self addChildViewController:tom];
    [self.view addSubview:subView7];
    [subView7 addSubview:tom.view];
    
    [self addChildViewController:lahey];
    [self.view addSubview:subView8];
    [subView8 addSubview:lahey.view];
    
    [self addChildViewController:kolchac];
    [self.view addSubview:subView9];
    [subView9 addSubview:kolchac.view];
    
    [self addChildViewController:detective];
    [self.view addSubview:subView10];
    [subView10 addSubview:detective.view];
    
    [self addChildViewController:heavensGate];
    [self.view addSubview:subView11];
    [subView11 addSubview:heavensGate.view];
    
    [self addChildViewController:ancientAliensGuy];
    [self.view addSubview:subView12];
    [subView12 addSubview:ancientAliensGuy.view];
    
    [self addChildViewController:suicideGuy];
    [self.view addSubview:subView13];
    [subView13 addSubview:suicideGuy.view];

    [super viewDidLoad];
    
    tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapAction)];
}

- (IBAction)stop:(id)sender{
    [human stop];
    [farmer stop];
    [cop stop];
    [mulder stop];
    [scully stop];
    [military stop];
    [mountie stop];
    [tom stop];
    [lahey stop];
    [kolchac stop];
    [detective stop];
    [heavensGate stop];
    [ancientAliensGuy stop];
    [suicideGuy stop];
}

- (IBAction)walk:(id)sender{
    [human walk];
    [farmer walk];
    [cop walk];
    [mulder walk];
    [scully walk];
    [military walk];
    [mountie walk];
    [tom walk];
    [lahey walk];
    [kolchac walk];
    [detective walk];
    [heavensGate walk];
    [ancientAliensGuy walk];
    [suicideGuy walk];
}

- (IBAction)panic:(id)sender{
    [human panic];
    [farmer panic];
    [cop panic];
    [mulder panic];
    [scully panic];
    [military panic];
    [mountie panic];
    [tom panic];
    [lahey panic];
    [kolchac panic];
    [detective panic];
    [heavensGate panic];
    [ancientAliensGuy panic];
    [suicideGuy panic];
}

- (IBAction)run:(id)sender{
    [human run];
    [farmer run];
    [cop run];
    [mulder run];
    [scully run];
    [military run];
    [mountie run];
    [tom run];
    [lahey run];
    [kolchac run];
    [detective run];
    [heavensGate run];
    [ancientAliensGuy run];
    [suicideGuy run];
}

- (IBAction)panicRun:(id)sender{
     [human panicRun];
     [farmer panicRun];
     [cop panicRun];
     [mulder panicRun];
     [scully panicRun];
     [military panicRun];
     [mountie panicRun];
     [tom panicRun];
     [lahey panicRun];
     [kolchac panicRun];
     [detective panicRun];
     [heavensGate panicRun];
     [ancientAliensGuy panicRun];
     [suicideGuy panicRun];
}

- (IBAction)fall:(id)sender{
    [human fall];
    [farmer fall];
    [cop fall];
    [mulder fall];
    [scully fall];
    [military fall];
    [mountie fall];
    [tom fall];
    [lahey fall];
    [kolchac fall];
    [detective fall];
    [heavensGate fall];
    [ancientAliensGuy fall];
    [suicideGuy fall];
}

- (IBAction)recover:(id)sender{
    [human recover];
    [farmer recover];
    [cop recover];
    [mulder recover];
    [scully recover];
    [military recover];
    [mountie recover];
    [tom recover];
    [lahey recover];
    [kolchac recover];
    [detective recover];
    [heavensGate recover];
    [ancientAliensGuy recover];
    [suicideGuy recover];
}

- (IBAction)pause:(id)sender{
    [human pause];
    [farmer pause];
    [cop pause];
    [mulder pause];
    [scully pause];
    [military pause];
    [mountie pause];
    [tom pause];
    [lahey pause];
    [kolchac pause];
    [detective pause];
    [heavensGate pause];
    [ancientAliensGuy pause];
    [suicideGuy pause];
}

- (IBAction)resume:(id)sender{
    [human resume];
    [farmer resume];
    [cop resume];
    [mulder resume];
    [scully resume];
    [military resume];
    [mountie resume];
    [tom resume];
    [lahey resume];
    [kolchac resume];
    [detective resume];
    [heavensGate resume];
    [ancientAliensGuy resume];
    [suicideGuy resume];
}

- (IBAction)changeOrientation:(id)sender{
    human.facing = [NSNumber numberWithInt:human.facing.intValue * -1];
    [human changeOrientation];
    farmer.facing = [NSNumber numberWithInt:farmer.facing.intValue * -1];
    [farmer changeOrientation];
    cop.facing = [NSNumber numberWithInt:cop.facing.intValue * -1];
    [cop changeOrientation];
    mulder.facing = [NSNumber numberWithInt:mulder.facing.intValue * -1];
    [mulder changeOrientation];
    scully.facing = [NSNumber numberWithInt:scully.facing.intValue * -1];
    [scully changeOrientation];
    military.facing = [NSNumber numberWithInt:military.facing.intValue * -1];
    [military changeOrientation];
    mountie.facing = [NSNumber numberWithInt:mountie.facing.intValue * -1];
    [mountie changeOrientation];
    tom.facing = [NSNumber numberWithInt:tom.facing.intValue * -1];
    [tom changeOrientation];
    lahey.facing = [NSNumber numberWithInt:lahey.facing.intValue * -1];
    [lahey changeOrientation];
    kolchac.facing = [NSNumber numberWithInt:kolchac.facing.intValue * -1];
    [kolchac changeOrientation];
    detective.facing = [NSNumber numberWithInt:detective.facing.intValue * -1];
    [detective changeOrientation];
    heavensGate.facing = [NSNumber numberWithInt:heavensGate.facing.intValue * -1];
    [heavensGate changeOrientation];
    ancientAliensGuy.facing = [NSNumber numberWithInt:ancientAliensGuy.facing.intValue * -1];
    [ancientAliensGuy changeOrientation];
    suicideGuy.facing = [NSNumber numberWithInt:suicideGuy.facing.intValue * -1];
    [suicideGuy changeOrientation];

}

- (IBAction)flair1:(id)sender{
    [farmer flair1];
    [cop flair1];
    [mulder flair1];
    [scully flair1];
    [mountie flair1];
    [tom flair1];
    [lahey flair1];
    [kolchac flair1];
    [detective flair1];
    [heavensGate flair1];
    [ancientAliensGuy flair1];
    [suicideGuy flair1];
}

- (IBAction)flair2:(id)sender{
    [farmer flair2];
    [cop flair2];
    [mulder flair2];
    [scully flair2];
    [mountie flair2];
    [tom flair2];
    [lahey flair2];
    [kolchac flair2];
    [detective flair2];
    [heavensGate flair2];
    [ancientAliensGuy flair2];
    [suicideGuy flair2];
}

- (IBAction)flair3:(id)sender{
    [farmer flair3];
    [cop flair3];
    [mulder flair3];
    [scully flair3];
    [mountie flair3];
    [tom flair3];
    [lahey flair3];
    [kolchac flair3];
    [detective flair3];
    [heavensGate flair3];
    [ancientAliensGuy flair3];
    [suicideGuy flair3];
}

- (IBAction)attack:(id)sender{
    [farmer attack:target];
    [cop attack:target];
    [mulder attack:target];
    [scully attack:target];
    [military attack:target];
    [mountie attack:target];
    [tom attack:target];
    [lahey attack:target];
    [kolchac attack:target];
    [detective attack:target];
}

- (IBAction)segue:(id)sender{
    [self performSegueWithIdentifier:@"segue2" sender:self];
}

- (IBAction)target:(id)sender{
    [self.view addGestureRecognizer:tap];
}

- (IBAction)callBackup:(id)sender{
    [mulder callBackup];
    [scully callBackup];
    [lahey callBackup];
    [detective callBackup];
}

- (void)tapAction{
    target = [tap locationInView:self.view];
    [self.view removeGestureRecognizer:tap];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
