//
//  Red30ViewController.m
//  PushTest2
//
//  Created by MF839-002 on 2016. 6. 21..
//  Copyright © 2016년 MF839-002. All rights reserved.
//

#import "Red30ViewController.h"
#import "Red50ViewController.h"
@interface Red30ViewController ()

@end

@implementation Red30ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.myLabel.text = @"Red 30";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    
    Red50ViewController *nextVC = [segue destinationViewController];
    nextVC.labelStr = @"Red 50";
}


- (IBAction)buttonClicked:(id)sender {
    [self performSegueWithIdentifier:@"red_50" sender:self];
}
@end
