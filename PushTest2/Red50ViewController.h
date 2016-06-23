//
//  Red50ViewController.h
//  PushTest2
//
//  Created by MF839-002 on 2016. 6. 21..
//  Copyright © 2016년 MF839-002. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Red50ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *myLabel;
@property (weak, nonatomic) NSString *labelStr;

- (IBAction)buttonClicked:(id)sender;

@end
