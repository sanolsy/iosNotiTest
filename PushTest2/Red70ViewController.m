//
//  Red70ViewController.m
//  PushTest2
//
//  Created by MF839-002 on 2016. 6. 21..
//  Copyright © 2016년 MF839-002. All rights reserved.
//

#import "Red70ViewController.h"
#import "Red50ViewController.h"
#import "ThirdViewController.h"
#import "AppDelegate.h"

@interface Red70ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *myTextField;
- (IBAction)switchChanged:(id)sender;
- (IBAction)notiButton:(id)sender;
@end

@implementation Red70ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.myLabel.text = _labelStr;
    
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(testMethod:)
                                                 name:UIKeyboardDidShowNotification
                                               object:nil];
}

- (void)testMethod:(NSNotification*)noti {
    NSLog(@"testMethod");
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


- (IBAction)buttonClicked:(id)sender {
    UINavigationController *myNav = self.navigationController;
    
    NSArray *vcArr = [myNav viewControllers];
    
    NSLog(@"%@", vcArr);
    //특정화면
//    [myNav popToViewController:[vcArr objectAtIndex:0] animated:YES];
    //루트화면
//    [myNav popToRootViewControllerAnimated:YES];
    //이전 화면
//    [myNav popViewControllerAnimated:YES];
    
//    Red50ViewController *red50VC = [vcArr objectAtIndex:1];
//    
//    red50VC.labelStr = @"Test";
    
    UINavigationController *nav = [[self.tabBarController viewControllers] objectAtIndex:0];
//    ThirdViewController *thirdVC = [[nav viewControllers] objectAtIndex:2];
//    
//    [thirdVC.view setBackgroundColor:[UIColor blackColor]];
    NSArray *vcs = [nav viewControllers];
    for (int i = 0; i < [vcs count]; i++) {
        UIViewController *vc = [vcs objectAtIndex:i];
        [vc.view setBackgroundColor:[UIColor blackColor]];
    }

    
}
- (IBAction)switchChanged:(id)sender {
    UISwitch *mySwitch = sender;
    
    AppDelegate *appDelegate = [UIApplication sharedApplication].delegate;
    if (mySwitch.on == YES) {

        appDelegate.backColor = [UIColor whiteColor];
    } else {
        appDelegate.backColor = [UIColor blackColor];
    }
}

- (IBAction)notiButton:(id)sender {
    
    NSLog(@"Text Field = %@", _myTextField.text);
    
    NSString *sendStr = self.myTextField.text;
    NSDictionary *notiDict = [NSDictionary dictionaryWithObjectsAndKeys:sendStr, @"sendMsg", nil];
    
    [[NSNotificationCenter defaultCenter] postNotificationName:@"YELLOW" object:nil userInfo:notiDict];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    
    [textField resignFirstResponder];
    
    return YES;
}

@end
