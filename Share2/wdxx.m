//
//  wdxx.m
//  Share2
//
//  Created by LiTianYang on 2017/8/1.
//  Copyright © 2017年 LiTianYang. All rights reserved.
//

#import "wdxx.h"
#import "xx_xgz.h"
#import "xx_sx.h"

@interface wdxx ()<UITableViewDelegate,UITableViewDataSource>

@end

@implementation wdxx

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
        lab1.text = @"评论";
        UILabel *lab2 = [[UILabel alloc] initWithFrame:CGRectMake(390, 20, 20, 20)];
        lab2.text = @"7";
        lab2.textColor = [UIColor blueColor];
        UIButton *but1 = [UIButton buttonWithType:UIButtonTypeCustom];
        [but1 setImage:[UIImage imageNamed:@"img0"] forState:UIControlStateNormal];
        but1.frame = CGRectMake(360, 20, 20, 20);
        [cell addSubview:lab1];
        [cell addSubview:but1];
        [cell addSubview:lab2];
    }
    if (indexPath.row == 1) {
        UILabel *lab1 = [[UILabel alloc] initWithFrame:CGRectMake(50, 20, 200, 20)];
        lab1.text = @"推荐我的";
        UILabel *lab2 = [[UILabel alloc] initWithFrame:CGRectMake(390, 20, 20, 20)];
        lab2.text = @"9";
        lab2.textColor = [UIColor blueColor];
        UIButton *but1 = [UIButton buttonWithType:UIButtonTypeCustom];
        [but1 setImage:[UIImage imageNamed:@"img0"] forState:UIControlStateNormal];
        but1.frame = CGRectMake(360, 20, 20, 20);
        [cell addSubview:lab1];
        [cell addSubview:but1];
        [cell addSubview:lab2];
    }
    if (indexPath.row == 2) {
        UILabel *lab1 = [[UILabel alloc] initWithFrame:CGRectMake(50, 20, 200, 20)];
        lab1.text = @"新关注的";
        UILabel *lab2 = [[UILabel alloc] initWithFrame:CGRectMake(390, 20, 20, 20)];
        lab2.text = @"5";
        lab2.textColor = [UIColor blueColor];
        UIButton *but1 = [UIButton buttonWithType:UIButtonTypeCustom];
        [but1 setImage:[UIImage imageNamed:@"img0"] forState:UIControlStateNormal];
        but1.frame = CGRectMake(360, 20, 20, 20);
        [cell addSubview:lab1];
        [cell addSubview:but1];
        [cell addSubview:lab2];
    }
    if (indexPath.row == 3) {
        UILabel *lab1 = [[UILabel alloc] initWithFrame:CGRectMake(50, 20, 200, 20)];
        lab1.text = @"私信";
        UILabel *lab2 = [[UILabel alloc] initWithFrame:CGRectMake(390, 20, 20, 20)];
        lab2.text = @"4";
        lab2.textColor = [UIColor blueColor];
        UIButton *but1 = [UIButton buttonWithType:UIButtonTypeCustom];
        [but1 setImage:[UIImage imageNamed:@"img0"] forState:UIControlStateNormal];
        but1.frame = CGRectMake(360, 20, 20, 20);
        [cell addSubview:lab1];
        [cell addSubview:but1];
        [cell addSubview:lab2];
    }
    if (indexPath.row == 4) {
        UILabel *lab1 = [[UILabel alloc] initWithFrame:CGRectMake(50, 20, 200, 20)];
        lab1.text = @"活动通知";
        UILabel *lab2 = [[UILabel alloc] initWithFrame:CGRectMake(390, 20, 20, 20)];
        lab2.text = @"1";
        lab2.textColor = [UIColor blueColor];
        UIButton *but1 = [UIButton buttonWithType:UIButtonTypeCustom];
        [but1 setImage:[UIImage imageNamed:@"img0"] forState:UIControlStateNormal];
        but1.frame = CGRectMake(360, 20, 20, 20);
        [cell addSubview:lab1];
        [cell addSubview:but1];
        [cell addSubview:lab2];
    }
    
    return cell;
    
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 60;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row == 2) {
        xx_xgz *NewView = [[xx_xgz alloc]init];
        self.hidesBottomBarWhenPushed = YES;
        [self.navigationController pushViewController:NewView animated:NO];
        self.hidesBottomBarWhenPushed = NO;
    }
    if (indexPath.row == 3) {
        xx_sx *NewView = [[xx_sx alloc]init];
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
