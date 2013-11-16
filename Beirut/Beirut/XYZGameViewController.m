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
@property IBOutlet UILabel* p1Name;
@property XYZPlayer *Player2;
@property IBOutlet UILabel* p2Name;
@property XYZPlayer *Player3;
@property IBOutlet UILabel* p3Name;
@property XYZPlayer *Player4;
@property IBOutlet UILabel* p4Name;
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
    self.Player1 = source.Player1;
    self.p1Name.text = self.Player1.name;
    self.Player2 = source.Player2;
    self.p2Name.text = self.Player2.name;
    self.Player3 = source.Player3;
    self.p3Name.text = self.Player3.name;
    self.Player4 = source.Player4;
    self.p4Name.text = self.Player4.name;
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
