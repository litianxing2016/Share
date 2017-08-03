//
//  xx_sx.m
//  Share2
//
//  Created by LiTianYang on 2017/8/2.
//  Copyright © 2017年 LiTianYang. All rights reserved.
//

#import "xx_sx.h"
#import "xx_sx_dh.h"

@interface xx_sx ()<UITableViewDelegate,UITableViewDataSource>

@end

@implementation xx_sx

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
    return 4;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *identifier = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if(!cell){
        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    }
    if (indexPath.row == 0) {
        UILabel *lab1 = [[UILabel alloc] initWithFrame:CGRectMake(140, 20, 100, 20)];
        lab1.text = @"share小格";
        UILabel *lab2 = [[UILabel alloc] initWithFrame:CGRectMake(140, 60, 300, 20)];
        lab2.text = @"你的作品我很喜欢!!!";
        lab2.textColor = [UIColor blueColor];
        UILabel *lab3 = [[UILabel alloc] initWithFrame:CGRectMake(330, 20, 100, 20)];
        lab3.text = @"11-03 09:45";
        lab3.textColor = [UIColor lightGrayColor];
        lab3.font = [UIFont systemFontOfSize:11];
        UIImageView *imaV = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"sixin_img1"]];
        imaV.frame = CGRectMake(50, 10, 80, 80);
        
        [cell addSubview:lab1];
        [cell addSubview:lab2];
        [cell addSubview:lab3];
        [cell addSubview:imaV];
    }
    if (indexPath.row == 1) {
        UILabel *lab1 = [[UILabel alloc] initWithFrame:CGRectMake(140, 20, 100, 20)];
        lab1.text = @"share小兰";
        UILabel *lab2 = [[UILabel alloc] initWithFrame:CGRectMake(140, 60, 300, 20)];
        lab2.text = @"谢谢，已关注你";
        lab2.textColor = [UIColor blueColor];
        UILabel *lab3 = [[UILabel alloc] initWithFrame:CGRectMake(330, 20, 100, 20)];
        lab3.text = @"11-03 10:00";
        lab3.textColor = [UIColor lightGrayColor];
        lab3.font = [UIFont systemFontOfSize:11];
        UIImageView *imaV = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"sixin_img2"]];
        imaV.frame = CGRectMake(50, 10, 80, 80);
        
        [cell addSubview:lab1];
        [cell addSubview:lab2];
        [cell addSubview:lab3];
        [cell addSubview:imaV];
    }
    if (indexPath.row == 2) {
        UILabel *lab1 = [[UILabel alloc] initWithFrame:CGRectMake(140, 20, 100, 20)];
        lab1.text = @"share小明";
        UILabel *lab2 = [[UILabel alloc] initWithFrame:CGRectMake(140, 60, 300, 20)];
        lab2.text = @"为你点赞!";
        lab2.textColor = [UIColor blueColor];
        UILabel *lab3 = [[UILabel alloc] initWithFrame:CGRectMake(330, 20, 100, 20)];
        lab3.text = @"11-03 10:423";
        lab3.textColor = [UIColor lightGrayColor];
        lab3.font = [UIFont systemFontOfSize:11];
        UIImageView *imaV = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"sixin_img3"]];
        imaV.frame = CGRectMake(50, 10, 80, 80);
        
        [cell addSubview:lab1];
        [cell addSubview:lab2];
        [cell addSubview:lab3];
        [cell addSubview:imaV];
    }
    if (indexPath.row == 3) {
        UILabel *lab1 = [[UILabel alloc] initWithFrame:CGRectMake(140, 20, 100, 20)];
        lab1.text = @"share小雪";
        UILabel *lab2 = [[UILabel alloc] initWithFrame:CGRectMake(140, 60, 300, 20)];
        lab2.text = @"你好可以问问你是怎么拍的吗？";
        lab2.textColor = [UIColor blueColor];
        UILabel *lab3 = [[UILabel alloc] initWithFrame:CGRectMake(330, 20, 100, 20)];
        lab3.text = @"11-03 11:20";
        lab3.textColor = [UIColor lightGrayColor];
        lab3.font = [UIFont systemFontOfSize:11];
        UIImageView *imaV = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"sixin_img4"]];
        imaV.frame = CGRectMake(50, 10, 80, 80);
        
        [cell addSubview:lab1];
        [cell addSubview:lab2];
        [cell addSubview:lab3];
        [cell addSubview:imaV];
    }
    return cell;
    
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 100;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row == 0) {
        xx_sx_dh *NewView = [[xx_sx_dh alloc]init];
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
