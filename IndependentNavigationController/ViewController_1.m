//
//  ViewController_1.m
//  NavTest
//
//  Created by Wmy on 2016/11/28.
//  Copyright © 2016年 Wmy. All rights reserved.
//

#import "ViewController_1.h"
#import "ViewController_2.h"

@interface ViewController_1 ()

@end

@implementation ViewController_1

- (void)dealloc {
    NSLog(@"%s", __func__);
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.navigationController setNavigationBarHidden:YES animated:YES];
}

- (IBAction)push:(id)sender {
    [self.navigationController pushViewController:[ViewController_2 new] animated:YES];
}

@end
