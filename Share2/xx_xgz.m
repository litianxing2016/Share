//
//  xx_xgz.m
//  Share2
//
//  Created by LiTianYang on 2017/8/2.
//  Copyright © 2017年 LiTianYang. All rights reserved.
//

#import "xx_xgz.h"

@interface xx_xgz ()<UITableViewDelegate,UITableViewDataSource>

@end

@implementation xx_xgz

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
    return 6;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *identifier = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if(!cell){
        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    }
    if (indexPath.row == 0) {
        UILabel *lab1 = [[UILabel alloc] initWithFrame:CGRectMake(140, 40, 100, 20)];
        lab1.text = @"share小格";
        UIImageView *imaV = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"sixin_img1"]];
        imaV.frame = CGRectMake(50, 10, 80, 80);
        UIButton *but1 = [UIButton buttonWithType:UIButtonTypeCustom];
        [but1 setImage:[UIImage imageNamed:@"guanzhu_0"] forState:UIControlStateNormal];
        [but1 setImage:[UIImage imageNamed:@"guanzhu_1"] forState:UIControlStateSelected];
        [but1 addTarget:self action:@selector(button:) forControlEvents:UIControlEventTouchUpInside];
        but1.frame = CGRectMake(340, 40, 60, 30);
        [cell addSubview:lab1];
        [cell addSubview:but1];
        [cell addSubview:imaV];
    }
    if (indexPath.row == 1) {
        UILabel *lab1 = [[UILabel alloc] initWithFrame:CGRectMake(140, 40, 100, 20)];
        lab1.text = @"share小兰";
        UIImageView *imaV = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"sixin_img2"]];
        imaV.frame = CGRectMake(50, 10, 80, 80);
        UIButton *but1 = [UIButton buttonWithType:UIButtonTypeCustom];
        [but1 setImage:[UIImage imageNamed:@"guanzhu_0"] forState:UIControlStateNormal];
        [but1 setImage:[UIImage imageNamed:@"guanzhu_1"] forState:UIControlStateSelected];
        [but1 addTarget:self action:@selector(button:) forControlEvents:UIControlEventTouchUpInside];
        but1.frame = CGRectMake(340, 40, 60, 30);
        [cell addSubview:lab1];
        [cell addSubview:but1];
        [cell addSubview:imaV];
    }
    if (indexPath.row == 2) {
        UILabel *lab1 = [[UILabel alloc] initWithFrame:CGRectMake(140, 40, 100, 20)];
        lab1.text = @"share小明";
        UIImageView *imaV = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"sixin_img3"]];
        imaV.frame = CGRectMake(50, 10, 80, 80);
        UIButton *but1 = [UIButton buttonWithType:UIButtonTypeCustom];
        [but1 setImage:[UIImage imageNamed:@"guanzhu_0"] forState:UIControlStateNormal];
        [but1 setImage:[UIImage imageNamed:@"guanzhu_1"] forState:UIControlStateSelected];
        [but1 addTarget:self action:@selector(button:) forControlEvents:UIControlEventTouchUpInside];
        but1.frame = CGRectMake(340, 40, 60, 30);
        [cell addSubview:lab1];
        [cell addSubview:but1];
        [cell addSubview:imaV];
    }
    if (indexPath.row == 3) {
        UILabel *lab1 = [[UILabel alloc] initWithFrame:CGRectMake(140, 40, 100, 20)];
        lab1.text = @"share小雪";
        UIImageView *imaV = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"sixin_img4"]];
        imaV.frame = CGRectMake(50, 10, 80, 80);
        UIButton *but1 = [UIButton buttonWithType:UIButtonTypeCustom];
        [but1 setImage:[UIImage imageNamed:@"guanzhu_0"] forState:UIControlStateNormal];
        [but1 setImage:[UIImage imageNamed:@"guanzhu_1"] forState:UIControlStateSelected];
        [but1 addTarget:self action:@selector(button:) forControlEvents:UIControlEventTouchUpInside];
        but1.frame = CGRectMake(340, 40, 60, 30);
        [cell addSubview:lab1];
        [cell addSubview:but1];
        [cell addSubview:imaV];
    }
    if (indexPath.row == 4) {
        UILabel *lab1 = [[UILabel alloc] initWithFrame:CGRectMake(140, 40, 100, 20)];
        lab1.text = @"share萌萌";
        UIImageView *imaV = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"guanzhu_img5"]];
        imaV.frame = CGRectMake(50, 10, 80, 80);
        UIButton *but1 = [UIButton buttonWithType:UIButtonTypeCustom];
        [but1 setImage:[UIImage imageNamed:@"guanzhu_0"] forState:UIControlStateNormal];
        [but1 setImage:[UIImage imageNamed:@"guanzhu_1"] forState:UIControlStateSelected];
        [but1 addTarget:self action:@selector(button:) forControlEvents:UIControlEventTouchUpInside];
        but1.frame = CGRectMake(340, 40, 60, 30);
        [cell addSubview:lab1];
        [cell addSubview:but1];
        [cell addSubview:imaV];
    }
    if (indexPath.row == 5) {
        UILabel *lab1 = [[UILabel alloc] initWithFrame:CGRectMake(140, 40, 100, 20)];
        lab1.text = @"sharetLity";
        UIImageView *imaV = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"guanzhu_img6"]];
        imaV.frame = CGRectMake(50, 10, 80, 80);
        UIButton *but1 = [UIButton buttonWithType:UIButtonTypeCustom];
        [but1 setImage:[UIImage imageNamed:@"guanzhu_0"] forState:UIControlStateNormal];
        [but1 setImage:[UIImage imageNamed:@"guanzhu_1"] forState:UIControlStateSelected];
        [but1 addTarget:self action:@selector(button:) forControlEvents:UIControlEventTouchUpInside];
        but1.frame = CGRectMake(340, 40, 60, 30);
        [cell addSubview:lab1];
        [cell addSubview:but1];
        [cell addSubview:imaV];
    }
    
    return cell;
    
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 100;
}
- (void)button:(UIButton *)sender
{
    sender.selected = !sender.selected;
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
