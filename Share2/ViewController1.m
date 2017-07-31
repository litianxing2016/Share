//
//  ViewController1.m
//  Share2
//
//  Created by LiTianYang on 2017/7/27.
//  Copyright © 2017年 LiTianYang. All rights reserved.
//

#import "ViewController1.h"
#import "Status1.h"
#import "TableViewCell1.h"
#import "head.h"

@interface ViewController1 ()<UITableViewDataSource,UITableViewDelegate>
{
    UITableView *_tableView;
    NSMutableArray *_status;
}
@end

@implementation ViewController1

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initData];

    self.navigationItem.title = @"SHARE";
    self.navigationController.navigationBar.titleTextAttributes = [NSDictionary dictionaryWithObject:[UIColor whiteColor] forKey:NSForegroundColorAttributeName];
    
    _tableView=[[UITableView alloc]initWithFrame:CGRectMake(10, 0, self.view.frame.size.width-20, self.view.frame.size.height) style:UITableViewStylePlain];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    
    [self.view addSubview:_tableView];
    
    head *vie = [[head alloc]initWithFrame:CGRectMake(10, 0, 414-20, 150)];
    
    _tableView.tableHeaderView = vie;
    
}
- (void)initData
{
    NSString *path=[[NSBundle mainBundle] pathForResource:@"Data 1" ofType:@"plist"];
    NSArray *array=[NSArray arrayWithContentsOfFile:path];
    _status=[[NSMutableArray alloc]init];
    [array enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        [_status addObject:[Status1 statusWithDictionary:obj]];
        NSLog(@"%@",obj);
    }];
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return _status.count;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *Identifier=@"cell";
    TableViewCell1 *cell = [tableView dequeueReusableCellWithIdentifier:Identifier];
    if(!cell){
        cell=[[TableViewCell1 alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:Identifier];
    }
    Status1 *status=_status[indexPath.section];
    cell.status1=status;
    NSLog(@"%ld",(long)indexPath.section);
    return cell;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 110;
}
-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return 10;
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
