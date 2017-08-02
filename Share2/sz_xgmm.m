//
//  sz_xgmm.m
//  Share2
//
//  Created by LiTianYang on 2017/8/2.
//  Copyright © 2017年 LiTianYang. All rights reserved.
//

#import "sz_xgmm.h"

@interface sz_xgmm ()<UITableViewDelegate,UITableViewDataSource>
{
    UITableView *_tableView;
}
@end

@implementation sz_xgmm

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[[UIImage imageNamed:@"返回"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] style:UIBarButtonItemStylePlain target:self action:@selector(touchLeft)];
    
    _tableView=[[UITableView alloc]initWithFrame:CGRectMake(0, 0, 414, 736) style:UITableViewStylePlain];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    _tableView.tableFooterView = [[UIView alloc] initWithFrame:CGRectZero];
    
    [self.view addSubview:_tableView];
    
    UIButton *but = [UIButton buttonWithType:UIButtonTypeCustom];
    but.frame = CGRectMake(180, 320, 60, 30);
    but.backgroundColor = [UIColor blackColor];
    [but setTitle:@"提交" forState:UIControlStateNormal];
    [but setTintColor:[UIColor whiteColor]];
    [self.view addSubview:but];
    
    _tableView.scrollEnabled = NO;

}
- (void)touchLeft
{
    [self.navigationController popViewControllerAnimated:NO];
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 3;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *identifier = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if(!cell){
        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    }
    if (indexPath.row == 0) {
        UILabel *lab1 = [[UILabel alloc] initWithFrame:CGRectMake(50, 20, 70, 20)];
        lab1.text = @"旧密码";
        UILabel *lab2 = [[UILabel alloc] initWithFrame:CGRectMake(120, 20, 200, 20)];
        lab2.text = @"6-20英文或数字结合";
        [cell addSubview:lab1];
        [cell addSubview:lab2];
    }
    if (indexPath.row == 1) {
        UILabel *lab1 = [[UILabel alloc] initWithFrame:CGRectMake(50, 20, 70, 20)];
        lab1.text = @"新密码";
        UILabel *lab2 = [[UILabel alloc] initWithFrame:CGRectMake(120, 20, 200, 20)];
        lab2.text = @"6-20英文或数字结合";
        [cell addSubview:lab1];
        [cell addSubview:lab2];
    }
    if (indexPath.row == 2) {
        UILabel *lab1 = [[UILabel alloc] initWithFrame:CGRectMake(50, 20, 70, 20)];
        lab1.text = @"确认密码";
        UILabel *lab2 = [[UILabel alloc] initWithFrame:CGRectMake(120, 20, 200, 20)];
        lab2.text = @"请再次确认输入密码";
        [cell addSubview:lab1];
        [cell addSubview:lab2];
    }
    return cell;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 60;
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
