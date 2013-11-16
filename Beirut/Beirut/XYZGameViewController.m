//
//  XYZGameViewController.m
//  Beirut
//
//  Created by Arthur Chi on 11/16/13.
//  Copyright (c) 2013 Arthur Chi. All rights reserved.
//

#import "XYZGameViewController.h"
#import "XYZPlayer.h"
#import "XYZGameSetupViewController.h"
@interface XYZGameViewController ()
@property XYZPlayer *Player1;
@property XYZPlayer *Player2;
@property XYZPlayer *Player3;
@property XYZPlayer *Player4;
@end

@implementation XYZGameViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
- (IBAction)unwindToList:(UIStoryboardSegue *)segue
{
    XYZGameSetupViewController *source = [segue sourceViewController];
    XYZPlayer *P1 = source.Player1;
    XYZPlayer *P2 = source.Player2;
    XYZPlayer *P3 = source.Player3;
    XYZPlayer *P4 = source.Player4;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
