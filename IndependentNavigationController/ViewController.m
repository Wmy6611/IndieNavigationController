//
//  ViewController.m
//  NavTest
//
//  Created by Wmy on 2016/11/28.
//  Copyright © 2016年 Wmy. All rights reserved.
//

#import "ViewController.h"
#import "ViewController_1.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.navigationController setNavigationBarHidden:YES animated:YES];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self.navigationController pushViewController:[ViewController_1 new] animated:YES];
}

@end
