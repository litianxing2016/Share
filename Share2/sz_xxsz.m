//
//  sz_xxsz.m
//  Share2
//
//  Created by LiTianYang on 2017/8/2.
//  Copyright © 2017年 LiTianYang. All rights reserved.
//

#import "sz_xxsz.h"

@interface sz_xxsz ()<UITableViewDelegate,UITableViewDataSource>

@end

@implementation sz_xxsz

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
        lab1.text = @"接受新消息通知";
        
        UIButton *but1 = [UIButton buttonWithType:UIButtonTypeCustom];
        [but1 setImage:[UIImage imageNamed:@"my_button_0"] forState:UIControlStateNormal];
        [but1 setImage:[UIImage imageNamed:@"my_button_1"] forState:UIControlStateSelected];
        [but1 addTarget:self action:@selector(button:) forControlEvents:UIControlEventTouchUpInside];
        but1.frame = CGRectMake(360, 20, 20, 20);
        [cell addSubview:lab1];
        [cell addSubview:but1];
        
    }
    if (indexPath.row == 1) {
        UILabel *lab1 = [[UILabel alloc] initWithFrame:CGRectMake(50, 20, 200, 20)];
        lab1.text = @"通知显示栏";
    
        UIButton *but1 = [UIButton buttonWithType:UIButtonTypeCustom];
        [but1 setImage:[UIImage imageNamed:@"my_button_0"] forState:UIControlStateNormal];
        [but1 setImage:[UIImage imageNamed:@"my_button_1"] forState:UIControlStateSelected];
        [but1 addTarget:self action:@selector(button:) forControlEvents:UIControlEventTouchUpInside];
        but1.frame = CGRectMake(360, 20, 20, 20);
        [cell addSubview:lab1];
        [cell addSubview:but1];
    }
    if (indexPath.row == 2) {
        UILabel *lab1 = [[UILabel alloc] initWithFrame:CGRectMake(50, 20, 200, 20)];
        lab1.text = @"声音";
        UIButton *but1 = [UIButton buttonWithType:UIButtonTypeCustom];
        [but1 setImage:[UIImage imageNamed:@"my_button_0"] forState:UIControlStateNormal];
        [but1 setImage:[UIImage imageNamed:@"my_button_1"] forState:UIControlStateSelected];
        [but1 addTarget:self action:@selector(button:) forControlEvents:UIControlEventTouchUpInside];
        but1.frame = CGRectMake(360, 20, 20, 20);
        [cell addSubview:lab1];
        [cell addSubview:but1];
    }
    if (indexPath.row == 3) {
        UILabel *lab1 = [[UILabel alloc] initWithFrame:CGRectMake(50, 20, 200, 20)];
        lab1.text = @"震动";
        UIButton *but1 = [UIButton buttonWithType:UIButtonTypeCustom];
        [but1 setImage:[UIImage imageNamed:@"my_button_0"] forState:UIControlStateNormal];
        [but1 setImage:[UIImage imageNamed:@"my_button_1"] forState:UIControlStateSelected];
        [but1 addTarget:self action:@selector(button:) forControlEvents:UIControlEventTouchUpInside];
        but1.frame = CGRectMake(360, 20, 20, 20);
        [cell addSubview:lab1];
        [cell addSubview:but1];
    }
    if (indexPath.row == 4) {
        UILabel *lab1 = [[UILabel alloc] initWithFrame:CGRectMake(50, 20, 200, 20)];
        lab1.text = @"关注更新";
        UIButton *but1 = [UIButton buttonWithType:UIButtonTypeCustom];
        [but1 setImage:[UIImage imageNamed:@"my_button_0"] forState:UIControlStateNormal];
        [but1 setImage:[UIImage imageNamed:@"my_button_1"] forState:UIControlStateSelected];
        [but1 addTarget:self action:@selector(button:) forControlEvents:UIControlEventTouchUpInside];
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
