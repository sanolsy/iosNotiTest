//
//  ViewController.m
//  PushTest2
//
//  Created by MF839-002 on 2016. 6. 20..
//  Copyright © 2016년 MF839-002. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"


@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *myLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(changeYellow:)
                                                 name:@"YELLOW"
                                               object:nil];
}

- (void)changeYellow:(NSNotification*)noti{
    [self.view setBackgroundColor:[UIColor yellowColor]];
    
    _myLabel.text = [noti.userInfo objectForKey:@"sendMsg"];
}

-(void)viewWillAppear:(BOOL)animated {
//    AppDelegate *appDelegate = [UIApplication sharedApplication].delegate;
//    [self.view setBackgroundColor:appDelegate.backColor];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
