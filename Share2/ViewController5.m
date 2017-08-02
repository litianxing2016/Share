//
//  ViewController5.m
//  Share2
//
//  Created by LiTianYang on 2017/7/27.
//  Copyright © 2017年 LiTianYang. All rights reserved.
//

#import "ViewController5.h"
#import "wdsc.h"
#import "wdxx.h"
#import "wdtj.h"
#import "yxtz.h"
#import "shezhi.h"

@interface ViewController5 ()<UITableViewDelegate,UITableViewDataSource>

@end

@implementation ViewController5

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"个人信息";
    self.navigationController.navigationBar.titleTextAttributes = [NSDictionary dictionaryWithObject:[UIColor whiteColor] forKey:NSForegroundColorAttributeName];
    
    UITableView *tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, 414, 736) style:UITableViewStylePlain];
    tableView.delegate = self;
    tableView.dataSource = self;
    [self.view addSubview:tableView];
    
    UIView *vie = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 414, 150)];
    
    UIImageView *imagV = [[UIImageView alloc] initWithFrame:CGRectMake(50, 10, 150, 130)];
    imagV.image = [UIImage imageNamed:@"sixin_img1"];
    [vie addSubview:imagV];
    
    UILabel *lab1 = [[UILabel alloc] initWithFrame:CGRectMake(210, 10, 200, 40)];
    lab1.text = @"share小白";
    lab1.font = [UIFont systemFontOfSize:17];
    [vie addSubview:lab1];
    
    UILabel *lab2 = [[UILabel alloc] initWithFrame:CGRectMake(210, 50, 200, 20)];
    lab2.text = @"数媒/设计爱好者";
    lab2.font = [UIFont systemFontOfSize:13];
    [vie addSubview:lab2];
    
    UILabel *lab3 = [[UILabel alloc] initWithFrame:CGRectMake(210, 80, 200, 20)];
    lab3.text = @"开心了就笑，不开心了就过会儿再笑";
    lab3.font = [UIFont systemFontOfSize:12];
    [vie addSubview:lab3];
    
    UIButton *but1 = [UIButton buttonWithType:UIButtonTypeCustom];
    but1.frame = CGRectMake(210, 115, 20, 15);
    [but1 setImage:[UIImage imageNamed:@"img01"] forState:UIControlStateNormal];
    [vie addSubview:but1];

    UILabel *labe1 = [[UILabel alloc] initWithFrame:CGRectMake(235, 115, 20, 15)];
    labe1.text = @"15";
    labe1.textColor = [UIColor blueColor];
    [vie addSubview:labe1];
    
    UIButton *but2 = [UIButton buttonWithType:UIButtonTypeCustom];
    but2.frame = CGRectMake(275, 115, 20, 15);
    [but2 setImage:[UIImage imageNamed:@"img3"] forState:UIControlStateNormal];
    [vie addSubview:but2];
    
    UILabel *labe2 = [[UILabel alloc] initWithFrame:CGRectMake(300, 115, 30, 15)];
    labe2.text = @"120";
    labe2.textColor = [UIColor blueColor];
    [vie addSubview:labe2];
    
    UIButton *but3 = [UIButton buttonWithType:UIButtonTypeCustom];
    but3.frame = CGRectMake(340, 115, 20, 15);
    [but3 setImage:[UIImage imageNamed:@"img02"] forState:UIControlStateNormal];
    [vie addSubview:but3];
    
    UILabel *labe3 = [[UILabel alloc] initWithFrame:CGRectMake(365, 115, 30, 15)];
    labe3.text = @"89";
//    [labe3 setTextColor:[UIColor colorWithRed:112 green:172 blue:210 alpha:1]];
    labe3.textColor = [UIColor blueColor];
    [vie addSubview:labe3];
    
    tableView.tableHeaderView = vie;
    //关闭滑动
    tableView.scrollEnabled = NO;
    tableView.tableFooterView = [[UIView alloc] initWithFrame:CGRectZero];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 6;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *indentifier = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:indentifier];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:indentifier];
    }
    if (indexPath.row == 0) {
        UIImageView *imageV = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"img1"]];
        imageV.frame = CGRectMake(50, 20, 20, 20);
        UILabel *lab1 = [[UILabel alloc] initWithFrame:CGRectMake(100, 20, 200, 20)];
        lab1.text = @"我的上传";
        UIButton *but1 = [UIButton buttonWithType:UIButtonTypeCustom];
        [but1 setImage:[UIImage imageNamed:@"img0"] forState:UIControlStateNormal];
        but1.frame = CGRectMake(360, 20, 20, 20);
        [cell addSubview:imageV];
        [cell addSubview:lab1];
        [cell addSubview:but1];
    }
    
    if (indexPath.row == 1) {
        UIImageView *imageV = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"img2"]];
        imageV.frame = CGRectMake(50, 20, 20, 20);
        UILabel *lab1 = [[UILabel alloc] initWithFrame:CGRectMake(100, 20, 200, 20)];
        lab1.text = @"我的信息";
        UIButton *but1 = [UIButton buttonWithType:UIButtonTypeCustom];
        [but1 setImage:[UIImage imageNamed:@"img0"] forState:UIControlStateNormal];
        but1.frame = CGRectMake(360, 20, 20, 20);
        [cell addSubview:imageV];
        [cell addSubview:lab1];
        [cell addSubview:but1];
    }
    
    if (indexPath.row == 2) {
        UIImageView *imageV = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"img3"]];
        imageV.frame = CGRectMake(50, 20, 20, 20);
        UILabel *lab1 = [[UILabel alloc] initWithFrame:CGRectMake(100, 20, 200, 20)];
        lab1.text = @"我推荐的";
        UIButton *but1 = [UIButton buttonWithType:UIButtonTypeCustom];
        [but1 setImage:[UIImage imageNamed:@"img0"] forState:UIControlStateNormal];
        but1.frame = CGRectMake(360, 20, 20, 20);
        [cell addSubview:imageV];
        [cell addSubview:lab1];
        [cell addSubview:but1];
    }
    
    if (indexPath.row == 3) {
        UIImageView *imageV = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"img4"]];
        imageV.frame = CGRectMake(50, 20, 20, 20);
        UILabel *lab1 = [[UILabel alloc] initWithFrame:CGRectMake(100, 20, 200, 20)];
        lab1.text = @"院系通知";
        UIButton *but1 = [UIButton buttonWithType:UIButtonTypeCustom];
        [but1 setImage:[UIImage imageNamed:@"img0"] forState:UIControlStateNormal];
        but1.frame = CGRectMake(360, 20, 20, 20);
        [cell addSubview:imageV];
        [cell addSubview:lab1];
        [cell addSubview:but1];
    }
    
    if (indexPath.row == 4) {
        UIImageView *imageV = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"img5"]];
        imageV.frame = CGRectMake(50, 20, 20, 20);
        UILabel *lab1 = [[UILabel alloc] initWithFrame:CGRectMake(100, 20, 200, 20)];
        lab1.text = @"设置";
        UIButton *but1 = [UIButton buttonWithType:UIButtonTypeCustom];
        [but1 setImage:[UIImage imageNamed:@"img0"] forState:UIControlStateNormal];
        but1.frame = CGRectMake(360, 20, 20, 20);
        [cell addSubview:imageV];
        [cell addSubview:lab1];
        [cell addSubview:but1];
    }
    
    if (indexPath.row == 5) {
        UIImageView *imageV = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"img6"]];
        imageV.frame = CGRectMake(50, 20, 20, 20);
        UILabel *lab1 = [[UILabel alloc] initWithFrame:CGRectMake(100, 20, 200, 20)];
        lab1.text = @"退出";
        UIButton *but1 = [UIButton buttonWithType:UIButtonTypeCustom];
        [but1 setImage:[UIImage imageNamed:@"img0"] forState:UIControlStateNormal];
        but1.frame = CGRectMake(360, 20, 20, 20);
        [cell addSubview:imageV];
        [cell addSubview:lab1];
        [cell addSubview:but1];
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
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 10;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row == 0) {
        wdsc *NewView = [[wdsc alloc]init];
        self.hidesBottomBarWhenPushed = YES;
        [self.navigationController pushViewController:NewView animated:NO];
        self.hidesBottomBarWhenPushed = NO;
    }
    if (indexPath.row == 1) {
        wdxx *NewView = [[wdxx alloc]init];
        self.hidesBottomBarWhenPushed = YES;
        [self.navigationController pushViewController:NewView animated:NO];
        self.hidesBottomBarWhenPushed = NO;
    }
    if (indexPath.row == 2) {
        wdtj *NewView = [[wdtj alloc]init];
        self.hidesBottomBarWhenPushed = YES;
        [self.navigationController pushViewController:NewView animated:NO];
        self.hidesBottomBarWhenPushed = NO;
    }
    if (indexPath.row == 3) {
        yxtz *NewView = [[yxtz alloc]init];
        self.hidesBottomBarWhenPushed = YES;
        [self.navigationController pushViewController:NewView animated:NO];
        self.hidesBottomBarWhenPushed = NO;
    }
    if (indexPath.row == 4) {
        shezhi *NewView = [[shezhi alloc]init];
        self.hidesBottomBarWhenPushed = YES;
        [self.navigationController pushViewController:NewView animated:NO];
        self.hidesBottomBarWhenPushed = NO;
    }
    
}
/*红烧肉 豆角茄子 番茄炒蛋 青椒肉丝
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
