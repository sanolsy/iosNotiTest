//
//  Red50ViewController.m
//  PushTest2
//
//  Created by MF839-002 on 2016. 6. 21..
//  Copyright © 2016년 MF839-002. All rights reserved.
//

#import "Red50ViewController.h"
#import "Red70ViewController.h"
@interface Red50ViewController ()

@end

@implementation Red50ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.myLabel.text = self.labelStr;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidAppear:(BOOL)animated {
    NSLog(@"viewDidAppear");
}

- (void)viewWillAppear:(BOOL)animated {
    self.myLabel.text = self.labelStr;
    NSLog(@"viewWillAppear");
}

- (void)viewDidDisappear:(BOOL)animated {
    NSLog(@"viewDidDisappear");
}

- (void)viewWillDisappear:(BOOL)animated {
    NSLog(@"viewWillDisappear");
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    
    Red70ViewController *nextVC = [segue destinationViewController];
    nextVC.labelStr = @"Red 70";
    
}

- (IBAction)buttonClicked:(id)sender {
    [self performSegueWithIdentifier:@"red_70" sender:self];

}
@end
