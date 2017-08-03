//
//  xx_sx_dh.m
//  Share2
//
//  Created by LiTianYang on 2017/8/2.
//  Copyright © 2017年 LiTianYang. All rights reserved.
//

#import "xx_sx_dh.h"

@interface xx_sx_dh ()

@end

@implementation xx_sx_dh

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title = @"与share小兰对话";
    self.navigationController.navigationBar.titleTextAttributes = [NSDictionary dictionaryWithObject:[UIColor whiteColor] forKey:NSForegroundColorAttributeName];
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[[UIImage imageNamed:@"返回"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] style:UIBarButtonItemStylePlain target:self action:@selector(touchLeft)];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)touchLeft
{
    [self.navigationController popViewControllerAnimated:NO];
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
