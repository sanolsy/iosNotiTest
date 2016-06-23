//
//  ThirdViewController.m
//  PushTest2
//
//  Created by MF839-002 on 2016. 6. 20..
//  Copyright © 2016년 MF839-002. All rights reserved.
//

#import "ThirdViewController.h"
#import "AppDelegate.h"
@interface ThirdViewController ()

@end

@implementation ThirdViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(void)viewWillAppear:(BOOL)animated {
    AppDelegate *appDelegate = [UIApplication sharedApplication].delegate;
    [self.view setBackgroundColor:appDelegate.backColor];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
