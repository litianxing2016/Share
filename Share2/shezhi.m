//
//  shezhi.m
//  Share2
//
//  Created by LiTianYang on 2017/8/1.
//  Copyright © 2017年 LiTianYang. All rights reserved.
//

#import "shezhi.h"
#import "sz_jbzl.h"
#import "sz_xgmm.h"
#import "sz_xxsz.h"

@interface shezhi ()<UITableViewDelegate,UITableViewDataSource>

@end

@implementation shezhi

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[[UIImage imageNamed:@"返回"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] style:UIBarButtonItemStylePlain target:self action:@selector(touchLeft)];
    UITableView *tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, 414, 736) style:UITableViewStylePlain];
    tableView.delegate = self;
    tableView.dataSource = self;
    [self.view addSubview:tableView];
    
    tableView.tableFooterView = [[UIView alloc] initWithFrame:CGRectZero];
    tableView.scrollEnabled = NO;
}
- (void)touchLeft
{
    [self.navigationController popViewControllerAnimated:NO];
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 5;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *identifier = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if(!cell){
        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    }
    if (indexPath.row == 0) {
        UILabel *lab1 = [[UILabel alloc] initWithFrame:CGRectMake(50, 20, 200, 20)];
        lab1.text = @"基本资料";
        UIButton *but1 = [UIButton buttonWithType:UIButtonTypeCustom];
        [but1 setImage:[UIImage imageNamed:@"img0"] forState:UIControlStateNormal];
        but1.frame = CGRectMake(360, 20, 20, 20);
        [cell addSubview:lab1];
        [cell addSubview:but1];
    }
    if (indexPath.row == 1) {
        UILabel *lab1 = [[UILabel alloc] initWithFrame:CGRectMake(50, 20, 200, 20)];
        lab1.text = @"修改密码";
        UIButton *but1 = [UIButton buttonWithType:UIButtonTypeCustom];
        [but1 setImage:[UIImage imageNamed:@"img0"] forState:UIControlStateNormal];
        but1.frame = CGRectMake(360, 20, 20, 20);
        [cell addSubview:lab1];
        [cell addSubview:but1];
    }
    if (indexPath.row == 2) {
        UILabel *lab1 = [[UILabel alloc] initWithFrame:CGRectMake(50, 20, 200, 20)];
        lab1.text = @"消息设置";
        UIButton *but1 = [UIButton buttonWithType:UIButtonTypeCustom];
        [but1 setImage:[UIImage imageNamed:@"img0"] forState:UIControlStateNormal];
        but1.frame = CGRectMake(360, 20, 20, 20);
        [cell addSubview:lab1];
        [cell addSubview:but1];
    }
    if (indexPath.row == 3) {
        UILabel *lab1 = [[UILabel alloc] initWithFrame:CGRectMake(50, 20, 200, 20)];
        lab1.text = @"关于SHARE";
        UIButton *but1 = [UIButton buttonWithType:UIButtonTypeCustom];
        [but1 setImage:[UIImage imageNamed:@"img0"] forState:UIControlStateNormal];
        but1.frame = CGRectMake(360, 20, 20, 20);
        [cell addSubview:lab1];
        [cell addSubview:but1];
    }
    if (indexPath.row == 4) {
        UILabel *lab1 = [[UILabel alloc] initWithFrame:CGRectMake(50, 20, 200, 20)];
        lab1.text = @"清除缓存";
        UIButton *but1 = [UIButton buttonWithType:UIButtonTypeCustom];
        [but1 setImage:[UIImage imageNamed:@"img0"] forState:UIControlStateNormal];
        but1.frame = CGRectMake(360, 20, 20, 20);
        [cell addSubview:lab1];
        [cell addSubview:but1];
    }
    
    return cell;
    
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 60;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row == 0) {
        sz_jbzl *NewView = [[sz_jbzl alloc]init];
        self.hidesBottomBarWhenPushed = YES;
        [self.navigationController pushViewController:NewView animated:NO];
        self.hidesBottomBarWhenPushed = NO;
    }
    if (indexPath.row == 1) {
        sz_xgmm *NewView = [[sz_xgmm alloc]init];
        self.hidesBottomBarWhenPushed = YES;
        [self.navigationController pushViewController:NewView animated:NO];
        self.hidesBottomBarWhenPushed = NO;
    }
    if (indexPath.row == 2) {
        sz_xxsz *NewView = [[sz_xxsz alloc]init];
        self.hidesBottomBarWhenPushed = YES;
        [self.navigationController pushViewController:NewView animated:NO];
        self.hidesBottomBarWhenPushed = NO;
    }
    
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
