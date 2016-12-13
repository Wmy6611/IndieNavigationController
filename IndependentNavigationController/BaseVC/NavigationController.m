//
//  NavigationController.m
//  NavTest
//
//  Created by Wmy on 2016/11/29.
//  Copyright © 2016年 Wmy. All rights reserved.
//

#import "NavigationController.h"

@interface NavigationController ()

@end

@implementation NavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
}

+ (void)initialize {
    UINavigationBar *navBar = [UINavigationBar appearance];

    navBar.barTintColor = [UIColor redColor];
    navBar.translucent = NO;
    
    [navBar setBackgroundImage:[UIImage new] forBarMetrics:UIBarMetricsDefault];
    [navBar setShadowImage:[UIImage new]];
    
    NSDictionary *titleTextAttributes = @{NSForegroundColorAttributeName : [UIColor whiteColor],
                                          NSFontAttributeName : [UIFont boldSystemFontOfSize:18]};
    navBar.titleTextAttributes = titleTextAttributes;
    
}

#pragma mark -

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated {
    if (self.viewControllers.count > 0) {
        viewController.hidesBottomBarWhenPushed = YES;
        viewController.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"goBack"]
                                                                                           style:UIBarButtonItemStylePlain
                                                                                          target:self
                                                                                          action:@selector(goBack)];
    }
    [super pushViewController:viewController animated:animated];
}

#pragma mark -

- (void)pushViewControllerWithName:(NSString *)controllerName {
    Class class = NSClassFromString(controllerName);
    if (class) {
        UIViewController *vc = [[class alloc] init];
        [self pushViewController:vc animated:YES];
    }else {
        NSLog(@"没有该控制器 %@", controllerName);
    }
}

#pragma mark -

- (void)goBack {
    [self goBackAnimated:YES];
}

- (void)goBackAnimated:(BOOL)animated {
    if (self.presentingViewController) {
        [self dismissViewControllerAnimated:animated completion:nil];
    } else {
        NSAssert(self, @"self.navigationController == nil");
        if (self) {
            [self popViewControllerAnimated:animated];
        }
    }
}

@end
