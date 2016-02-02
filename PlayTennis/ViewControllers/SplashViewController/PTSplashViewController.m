//
//  PTSplashViewController.m
//  PlayTennis
//
//  Created by Krishantha Sunil on 29/1/16.
//  Copyright © 2016 Krishan. All rights reserved.
//

#import "PTSplashViewController.h"
#import "PTFrontTabBarViewController.h"
#import "PTUtility.h"


@interface PTSplashViewController ()
@end

@implementation PTSplashViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // TODO - Download the Data from api
    
    // Setup the Tab Bar Controller
    PTUtility *utility = [PTUtility sharedManager];
    NSString *nibName = [utility getNibName:@"PTFrontTabBarView"];
    PTFrontTabBarViewController *tabBarVC = [[PTFrontTabBarViewController alloc]init];
    
    
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
