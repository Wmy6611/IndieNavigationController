//
//  ViewController_3.m
//  NavTest
//
//  Created by Wmy on 2016/11/28.
//  Copyright © 2016年 Wmy. All rights reserved.
//

#import "ViewController_3.h"

@interface ViewController_3 ()

@end

@implementation ViewController_3

- (void)dealloc {
    NSLog(@"%s", __func__);
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.navigationController setNavigationBarHidden:YES animated:YES];
    self.rt_disableInteractivePop = YES;
}

- (IBAction)push:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

@end
