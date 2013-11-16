//
//  XYZGameSetupViewController.m
//  Beirut
//
//  Created by Arthur Chi on 11/16/13.
//  Copyright (c) 2013 Arthur Chi. All rights reserved.
//

#import "XYZGameSetupViewController.h"
#import "XYZPlayer.h"
@interface XYZGameSetupViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textField4;
@property (weak, nonatomic) IBOutlet UIButton *doneButton4;
@property (weak, nonatomic) IBOutlet UITextField *textField3;
@property (weak, nonatomic) IBOutlet UIButton *donebutton3;
@property (weak, nonatomic) IBOutlet UITextField *textField2;
@property (weak, nonatomic) IBOutlet UIButton *doneButton2;
@property (weak, nonatomic) IBOutlet UITextField *textField1;
@property (weak, nonatomic) IBOutlet UIButton *doneButton1;

@end

@implementation XYZGameSetupViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	self.Player1 = [[XYZPlayer alloc] init];
    self.Player2 = [[XYZPlayer alloc] init];
    self.Player3 = [[XYZPlayer alloc] init];
    self.Player4 = [[XYZPlayer alloc] init];
    self.Player1.partner = self.Player2;
    self.Player2.partner = self.Player1;
    self.Player3.partner = self.Player4;
    self.Player4.partner = self.Player3;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if (sender != self.doneButton1) return;
    self.Player1 = [[XYZPlayer alloc] init];
    self.Player2 = [[XYZPlayer alloc] init];
    self.Player3 = [[XYZPlayer alloc] init];
    self.Player4 = [[XYZPlayer alloc] init];
    if (self.textField1.text.length > 0) {
        self.Player1.name = self.textField1.text;
    } else { self.Player1.name = @"Player 1";}
    if (self.textField2.text.length > 0) {
        self.Player2.name = self.textField2.text;
    } else { self.Player2.name = @"Player 2";}
    if (self.textField3.text.length > 0) {
        self.Player3.name = self.textField1.text;
    } else { self.Player3.name = @"Player 3";}
    if (self.textField4.text.length > 0) {
        self.Player4.name = self.textField4.text;
    } else { self.Player4.name = @"Player 4";}
    
    
}

@end
