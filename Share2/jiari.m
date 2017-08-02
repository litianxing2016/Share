//
//  jiari.m
//  Share2
//
//  Created by LiTianYang on 2017/7/31.
//  Copyright © 2017年 LiTianYang. All rights reserved.
//

#import "jiari.h"
#import "Status1.h"
#import "TableViewCell1.h"

@interface jiari ()<UITableViewDelegate,UITableViewDataSource>
{
    UITableView *_tableView;
    NSMutableArray *_status;
}
@end

@implementation jiari

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initData];
    
    
    self.navigationItem.title = @"SHARE";
    self.navigationController.navigationBar.titleTextAttributes = [NSDictionary dictionaryWithObject:[UIColor whiteColor] forKey:NSForegroundColorAttributeName];
    
    _tableView=[[UITableView alloc]initWithFrame:CGRectMake(10, 0, self.view.frame.size.width-20, self.view.frame.size.height) style:UITableViewStylePlain];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    
    [self.view addSubview:_tableView];
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[[UIImage imageNamed:@"返回"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] style:UIBarButtonItemStylePlain target:self action:@selector(touchLeft)];
    
    UIView *vie = [[UIView alloc]initWithFrame:CGRectMake(10, 0, 414-20, 1300)];
    
    UILabel *lab1 = [[UILabel alloc] initWithFrame:CGRectMake(10, 0, 394, 20)];
    lab1.text = @"多希望列车能把我带到有你的城市";
    [vie addSubview:lab1];
    
    UIImageView *imaV1 = [[UIImageView alloc] initWithFrame:CGRectMake(0, 20, 394, 200)];
    imaV1.image = [UIImage imageNamed:@"works_img1"];
    [vie addSubview:imaV1];
    
    UIImageView *imaV2 = [[UIImageView alloc] initWithFrame:CGRectMake(0, 230, 394, 200)];
    imaV2.image = [UIImage imageNamed:@"works_img2"];
    [vie addSubview:imaV2];
    
    UIImageView *imaV3 = [[UIImageView alloc] initWithFrame:CGRectMake(95, 440, 200, 300)];
    imaV3.image = [UIImage imageNamed:@"works_img3"];
    [vie addSubview:imaV3];
    
    UIImageView *imaV4 = [[UIImageView alloc] initWithFrame:CGRectMake(0, 750, 394, 200)];
    imaV4.image = [UIImage imageNamed:@"works_img4"];
    [vie addSubview:imaV4];
    
    UIImageView *imaV5 = [[UIImageView alloc] initWithFrame:CGRectMake(95, 960, 200,300)];
    imaV5.image = [UIImage imageNamed:@"works_img5"];
    [vie addSubview:imaV5];
    
    _tableView.tableFooterView = vie;
}
- (void)touchLeft
{
    [self.navigationController popViewControllerAnimated:YES];
}
- (void)initData
{
    NSString *path=[[NSBundle mainBundle] pathForResource:@"Data 1" ofType:@"plist"];
    NSArray *array=[NSArray arrayWithContentsOfFile:path];
    _status=[[NSMutableArray alloc]init];
    [_status addObject:[Status1 statusWithDictionary:[array objectAtIndex:0]]];
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
//-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    if (indexPath.section == 0 && indexPath.row == 0) {
//        jiari *NewView = [[jiari alloc]init];
//        [self.navigationController pushViewController:NewView animated:NO];
//    }
//}
/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

@end
