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

@property NSString *temp1;
@property NSString *temp2;
@property NSString *temp3;
@property NSString *temp4;

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
- (void) setupPlayerNames: (NSString *) p1 andPlayer2: (NSString *) p2 andPlayer3: (NSString *) p3 andPlayer4: (NSString *) p4
{
    NSLog(p1);
    self.temp1 = p1;
    self.temp2 = p2;
    self.temp3 = p3;
    self.temp4 = p4;
}

- (IBAction)unwindToList:(UIStoryboardSegue *)segue
{
    XYZGameSetupViewController *source = [segue sourceViewController];
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.p1Name.text = self.temp1;
    self.p2Name.text = self.temp2;
    self.p3Name.text = self.temp3;
    self.p4Name.text = self.temp4;
    

}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
