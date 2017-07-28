//
//  ViewController3.m
//  Share2
//
//  Created by LiTianYang on 2017/7/27.
//  Copyright © 2017年 LiTianYang. All rights reserved.
//

#import "ViewController3.h"
#import "TableViewCell1.h"
#import "Status1.h"

@interface ViewController3 ()<UITableViewDelegate,UITableViewDataSource>
{
    UITableView *_tableView;
    NSMutableArray *_status;
}
@end

@implementation ViewController3

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initData];
    self.navigationItem.title = @"文章";
    self.navigationController.navigationBar.titleTextAttributes = [NSDictionary dictionaryWithObject:[UIColor whiteColor] forKey:NSForegroundColorAttributeName];
    
    UIView *vie = [[UIView alloc] initWithFrame:CGRectMake(0, 64, 414, 40)];
    vie.backgroundColor = [UIColor blackColor];
    
    UIButton *but1 = [UIButton buttonWithType:UIButtonTypeCustom];
    but1.frame = CGRectMake(0, 0, 130, 40);
    [but1 setTitle:@"精选文章" forState:UIControlStateNormal];
    [but1 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [vie addSubview:but1];
    
    UIImage *imag = [UIImage imageNamed:@"essay_line"];
    UIImageView *imagV1 = [[UIImageView alloc] initWithFrame:CGRectMake(130, 5, 2, 30)];
    imagV1.image = imag;
    imagV1.backgroundColor = [UIColor blackColor];
    UIImageView *imagV2 = [[UIImageView alloc] initWithFrame:CGRectMake(270, 5, 2, 30)];
    imagV2.image = imag;
    imagV2.backgroundColor = [UIColor blackColor];
    [vie addSubview:imagV1];
    [vie addSubview:imagV2];
    
    UIButton *but2 = [UIButton buttonWithType:UIButtonTypeCustom];
    but2.frame = CGRectMake(140, 0, 130, 40);
    [but2 setTitle:@"热门推荐" forState:UIControlStateNormal];
    [but2 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [vie addSubview:but2];
    
    UIButton *but3 = [UIButton buttonWithType:UIButtonTypeCustom];
    but3.frame = CGRectMake(280, 0, 130, 40);
    [but3 setTitle:@"全部文章" forState:UIControlStateNormal];
    [but3 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [vie addSubview:but3];
    
    [self.view addSubview:vie];
    
    _tableView=[[UITableView alloc]initWithFrame:CGRectMake(10, 104, self.view.frame.size.width-20, self.view.frame.size.height) style:UITableViewStylePlain];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    
    [self.view addSubview:_tableView];
    
}
- (void)initData
{
    NSString *path=[[NSBundle mainBundle] pathForResource:@"Data 2" ofType:@"plist"];
    NSArray *array=[NSArray arrayWithContentsOfFile:path];
    _status=[[NSMutableArray alloc]init];
    [array enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        [_status addObject:[Status1 statusWithDictionary:obj]];
        NSLog(@"%@",obj);
    }];
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return _status.count;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
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
