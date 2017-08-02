//
//  wdtj.m
//  Share2
//
//  Created by LiTianYang on 2017/8/1.
//  Copyright © 2017年 LiTianYang. All rights reserved.
//

#import "wdtj.h"
#import "scCell.h"

@interface wdtj ()<UITableViewDataSource,UITableViewDelegate>
{
    UITableView *_tableView;
}
@end

@implementation wdtj

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[[UIImage imageNamed:@"返回"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] style:UIBarButtonItemStylePlain target:self action:@selector(touchLeft)];
    
    _tableView=[[UITableView alloc]initWithFrame:CGRectMake(10, 0, self.view.frame.size.width-20, self.view.frame.size.height) style:UITableViewStylePlain];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    
    [self.view addSubview:_tableView];
}
- (void)touchLeft
{
    [self.navigationController popViewControllerAnimated:NO];
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 5;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *Identifier=@"cell";
    scCell *cell = [tableView dequeueReusableCellWithIdentifier:Identifier];
    if(!cell){
        cell=[[scCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:Identifier];
    }
    if (indexPath.section == 0) {
        cell.imaV.image = [UIImage imageNamed:@"list_img1"];
        cell.lab1.text = @"匆匆那年";
        cell.lab2.text = @"share小白";
        cell.lab3.text = @"原创-摄影-练习习作";
        cell.lab4.text = @"10分钟前";
        [cell.but1 setImage:[UIImage imageNamed:@"button_zan"] forState:UIControlStateNormal];
        [cell.but2 setImage:[UIImage imageNamed:@"button_guanzhu"] forState:UIControlStateNormal];
        [cell.but3 setImage:[UIImage imageNamed:@"button_share"] forState:UIControlStateNormal];
        cell.b1.text = @"45";
        cell.b2.text = @"108";
        cell.b3.text = @"20";
    }
    if (indexPath.section == 1) {
        cell.imaV.image = [UIImage imageNamed:@"list_img2"];
        cell.lab1.text = @"匆匆那年";
        cell.lab2.text = @"share小白";
        cell.lab3.text = @"原创-摄影-练习习作";
        cell.lab4.text = @"10分钟前";
        [cell.but1 setImage:[UIImage imageNamed:@"button_zan"] forState:UIControlStateNormal];
        [cell.but2 setImage:[UIImage imageNamed:@"button_guanzhu"] forState:UIControlStateNormal];
        [cell.but3 setImage:[UIImage imageNamed:@"button_share"] forState:UIControlStateNormal];
        cell.b1.text = @"45";
        cell.b2.text = @"108";
        cell.b3.text = @"20";
    }
    if (indexPath.section == 2) {
        cell.imaV.image = [UIImage imageNamed:@"list_img3"];
        cell.lab1.text = @"匆匆那年";
        cell.lab2.text = @"share小白";
        cell.lab3.text = @"原创-摄影-练习习作";
        cell.lab4.text = @"10分钟前";
        [cell.but1 setImage:[UIImage imageNamed:@"button_zan"] forState:UIControlStateNormal];
        [cell.but2 setImage:[UIImage imageNamed:@"button_guanzhu"] forState:UIControlStateNormal];
        [cell.but3 setImage:[UIImage imageNamed:@"button_share"] forState:UIControlStateNormal];
        cell.b1.text = @"45";
        cell.b2.text = @"108";
        cell.b3.text = @"20";
    }
    if (indexPath.section == 3) {
        cell.imaV.image = [UIImage imageNamed:@"list_img4"];
        cell.lab1.text = @"匆匆那年";
        cell.lab2.text = @"share小白";
        cell.lab3.text = @"原创-摄影-练习习作";
        cell.lab4.text = @"10分钟前";
        [cell.but1 setImage:[UIImage imageNamed:@"button_zan"] forState:UIControlStateNormal];
        [cell.but2 setImage:[UIImage imageNamed:@"button_guanzhu"] forState:UIControlStateNormal];
        [cell.but3 setImage:[UIImage imageNamed:@"button_share"] forState:UIControlStateNormal];
        cell.b1.text = @"45";
        cell.b2.text = @"108";
        cell.b3.text = @"20";
    }
    if (indexPath.section == 4) {
        cell.imaV.image = [UIImage imageNamed:@"note_img3"];
        cell.lab1.text = @"匆匆那年";
        cell.lab2.text = @"share小白";
        cell.lab3.text = @"原创-摄影-练习习作";
        cell.lab4.text = @"10分钟前";
        [cell.but1 setImage:[UIImage imageNamed:@"button_zan"] forState:UIControlStateNormal];
        [cell.but2 setImage:[UIImage imageNamed:@"button_guanzhu"] forState:UIControlStateNormal];
        [cell.but3 setImage:[UIImage imageNamed:@"button_share"] forState:UIControlStateNormal];
        cell.b1.text = @"45";
        cell.b2.text = @"108";
        cell.b3.text = @"20";
    }
    
    return cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 110;
}
-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return 10;
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
