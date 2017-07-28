//
//  ViewController4.m
//  Share2
//
//  Created by LiTianYang on 2017/7/27.
//  Copyright © 2017年 LiTianYang. All rights reserved.
//

#import "ViewController4.h"
#import "Data3.h"
#import "TableViewCell2.h"

@interface ViewController4 ()<UITableViewDataSource,UITableViewDelegate>
{
    NSMutableArray *_array;
    UITableView *_tableView;
}
@end

@implementation ViewController4

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initData];
    self.navigationItem.title = @"活动";
    self.navigationController.navigationBar.titleTextAttributes = [NSDictionary dictionaryWithObject:[UIColor whiteColor] forKey:NSForegroundColorAttributeName];
    
    _tableView=[[UITableView alloc]initWithFrame:CGRectMake(10, 0, self.view.frame.size.width-20, self.view.frame.size.height) style:UITableViewStylePlain];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    
    [self.view addSubview:_tableView];
}

- (void)initData
{
    _array = [[NSMutableArray alloc] init];
    
    Data3 *data1 = [[Data3 alloc] init];
    data1.imageName = @"hd1";
    data1.str = @"下厨也有美美的，从一条围裙开始一六月鲜围裙创意设计大赛";
    
    Data3 *data2 = [[Data3 alloc] init];
    data2.imageName = @"hd2";
    data2.str = @"MIUI主题市场让你的创意改变世界";
    
    Data3 *data3 = [[Data3 alloc] init];
    data3.imageName = @"hd3";
    data3.str = @"xxxxxxxxxxxxx";
    
    [_array addObject:data1];
    [_array addObject:data2];
    [_array addObject:data3];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return _array.count;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *identifer = @"cell";
    TableViewCell2 *cell = [tableView dequeueReusableCellWithIdentifier:identifer];
    if (!cell) {
        cell=[[TableViewCell2 alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifer];
    }
    Data3 *data = [_array objectAtIndex:indexPath.section];
    cell.imageName = data.imageName;
    cell.str = data.str;
    NSLog(@"%@",data.imageName);
    NSLog(@"%@",data.str);
    return cell;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 150;
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
