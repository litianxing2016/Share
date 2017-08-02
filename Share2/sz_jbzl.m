//
//  sz_jbzl.m
//  Share2
//
//  Created by LiTianYang on 2017/8/2.
//  Copyright © 2017年 LiTianYang. All rights reserved.
//

#import "sz_jbzl.h"

@interface sz_jbzl ()<UITableViewDataSource,UITableViewDelegate>

@end

@implementation sz_jbzl

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[[UIImage imageNamed:@"返回"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] style:UIBarButtonItemStylePlain target:self action:@selector(touchLeft)];
    
    UITableView *tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
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
        UILabel *lab1 = [[UILabel alloc] initWithFrame:CGRectMake(50, 50, 40, 20)];
        lab1.text = @"头像";
        UIImageView *imaV = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"sixin_img1"]];
        imaV.frame = CGRectMake(120, 10, 100, 100);
        [cell addSubview:lab1];
        [cell addSubview:imaV];
    }
    if (indexPath.row == 1) {
        UILabel *lab1 = [[UILabel alloc] initWithFrame:CGRectMake(50, 20, 40, 20)];
        lab1.text = @"昵称";
        UILabel *lab2 = [[UILabel alloc] initWithFrame:CGRectMake(120, 20, 280, 20)];
        lab2.text = @"share小白";
        [cell addSubview:lab1];
        [cell addSubview:lab2];
    }
    if (indexPath.row == 2) {
        UILabel *lab1 = [[UILabel alloc] initWithFrame:CGRectMake(50, 20, 40, 20)];
        lab1.text = @"签名";
        UILabel *lab2 = [[UILabel alloc] initWithFrame:CGRectMake(120, 20, 280, 20)];
        lab2.text = @"开心了就笑，不开心了就过会儿再笑";
        [cell addSubview:lab1];
        [cell addSubview:lab2];
    }
    if (indexPath.row == 3) {
        UILabel *lab1 = [[UILabel alloc] initWithFrame:CGRectMake(50, 20, 40, 20)];
        lab1.text = @"性别";
        UIButton *but1 = [UIButton buttonWithType:UIButtonTypeCustom];
        [but1 setBackgroundImage:[UIImage imageNamed:@"boy_button"] forState:UIControlStateNormal];
        but1.frame = CGRectMake(120, 20, 20, 20);
        UILabel *lab2 = [[UILabel alloc] initWithFrame:CGRectMake(145, 20, 20, 20)];
        lab2.text = @"男";
        UIButton *but2 = [UIButton buttonWithType:UIButtonTypeCustom];
        [but2 setBackgroundImage:[UIImage imageNamed:@"girl_button"] forState:UIControlStateNormal];
        but2.frame = CGRectMake(190, 20, 20, 20);
        UILabel *lab3 = [[UILabel alloc] initWithFrame:CGRectMake(215, 20, 20, 20)];
        lab3.text = @"女";
        [cell addSubview:lab1];
        [cell addSubview:lab2];
        [cell addSubview:lab3];
        [cell addSubview:but1];
        [cell addSubview:but2];
    }
    if (indexPath.row == 4) {
        UILabel *lab1 = [[UILabel alloc] initWithFrame:CGRectMake(50, 20, 40, 20)];
        lab1.text = @"邮箱";
        UILabel *lab2 = [[UILabel alloc] initWithFrame:CGRectMake(120, 20, 280, 20)];
        lab2.text = @"186####3@qq.com";
        [cell addSubview:lab1];
        [cell addSubview:lab2];
    }
    
    return cell;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row == 0) {
        return 120;
    }
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
