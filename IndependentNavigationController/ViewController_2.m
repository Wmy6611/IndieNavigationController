//
//  ViewController_2.m
//  NavTest
//
//  Created by Wmy on 2016/11/28.
//  Copyright © 2016年 Wmy. All rights reserved.
//

#import "ViewController_2.h"
#import "ViewController_3.h"

@interface ViewController_2 ()

@end

@implementation ViewController_2

- (void)dealloc {
    NSLog(@"%s", __func__);
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.rt_navigationController.transferNavigationBarAttributes = YES;
}

- (IBAction)push:(id)sender {
    [self.navigationController pushViewController:[ViewController_3 new] animated:YES];
}


@end
