//
//  ViewController2.m
//  Share2
//
//  Created by LiTianYang on 2017/7/27.
//  Copyright © 2017年 LiTianYang. All rights reserved.
//

#import "ViewController2.h"
#import "fabiaoViewController.h"

@interface ViewController2 ()
{
    UISearchBar *bar;
}
@end

@implementation ViewController2

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"搜索";
    self.navigationController.navigationBar.titleTextAttributes = [NSDictionary dictionaryWithObject:[UIColor whiteColor] forKey:NSForegroundColorAttributeName];
    
    
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[[UIImage imageNamed:@"返回"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] style:UIBarButtonItemStylePlain target:self action:nil];
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[[UIImage imageNamed:@"发表.jpg"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] style:UIBarButtonItemStylePlain target:self action:@selector(fabiao)];
    
    //===============================================================================================
    
    bar = [[UISearchBar alloc]initWithFrame:CGRectMake(10, 70, 390, 60)];
    bar.searchBarStyle = UISearchBarStyleMinimal;
    [self.view addSubview:bar];
    
    UIButton *but1 = [UIButton buttonWithType:UIButtonTypeCustom];
    but1.frame = CGRectMake(10, 170, 90, 40);
    but1.layer.cornerRadius = 5;
    but1.layer.masksToBounds = YES;
    but1.backgroundColor = [UIColor whiteColor];
    [but1 setTitle:@"平面设计" forState:UIControlStateNormal];
    [but1 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [but1 setTitleColor:[UIColor whiteColor] forState:UIControlStateSelected];
    [but1 setBackgroundImage:[UIImage imageNamed:@"background_main"] forState:UIControlStateSelected];
    [but1 addTarget:self action:@selector(button:) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:but1];
    
    UIButton *but2 = [UIButton buttonWithType:UIButtonTypeCustom];
    but2.frame = CGRectMake(110, 170, 90, 40);
    but2.layer.cornerRadius = 5;
    but2.layer.masksToBounds = YES;
    but2.backgroundColor = [UIColor whiteColor];
    [but2 setTitle:@"网页设计" forState:UIControlStateNormal];
    [but2 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [but2 setTitleColor:[UIColor whiteColor] forState:UIControlStateSelected];
    [but2 setBackgroundImage:[UIImage imageNamed:@"background_main"] forState:UIControlStateSelected];
    [but2 addTarget:self action:@selector(button:) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:but2];
    
    UIButton *but3 = [UIButton buttonWithType:UIButtonTypeCustom];
    but3.frame = CGRectMake(210, 170, 90, 40);
    but3.layer.cornerRadius = 5;
    but3.layer.masksToBounds = YES;
    but3.backgroundColor = [UIColor whiteColor];
    [but3 setTitle:@"UI/icon" forState:UIControlStateNormal];
    [but3 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [but3 setTitleColor:[UIColor whiteColor] forState:UIControlStateSelected];
    [but3 setBackgroundImage:[UIImage imageNamed:@"background_main"] forState:UIControlStateSelected];
    [but3 addTarget:self action:@selector(button:) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:but3];
    
    UIButton *but4 = [UIButton buttonWithType:UIButtonTypeCustom];
    but4.frame = CGRectMake(310, 170, 90, 40);
    but4.layer.cornerRadius = 5;
    but4.layer.masksToBounds = YES;
    but4.backgroundColor = [UIColor whiteColor];
    [but4 setTitle:@"插画/手绘" forState:UIControlStateNormal];
    but4.titleLabel.font = [UIFont systemFontOfSize: 14.0];
    [but4 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [but4 setTitleColor:[UIColor whiteColor] forState:UIControlStateSelected];
    [but4 setBackgroundImage:[UIImage imageNamed:@"background_main"] forState:UIControlStateSelected];
    [but4 addTarget:self action:@selector(button:) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:but4];
    
    ///////////////////////////////////////////////////////////////
    
    UIButton *but21 = [UIButton buttonWithType:UIButtonTypeCustom];
    but21.frame = CGRectMake(10, 220, 90, 40);
    but21.layer.cornerRadius = 5;
    but21.layer.masksToBounds = YES;
    but21.backgroundColor = [UIColor whiteColor];
    [but21 setTitle:@"虚拟与设计" forState:UIControlStateNormal];
    but21.titleLabel.font = [UIFont systemFontOfSize: 14.0];
    [but21 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [but21 setTitleColor:[UIColor whiteColor] forState:UIControlStateSelected];
    [but21 setBackgroundImage:[UIImage imageNamed:@"background_main"] forState:UIControlStateSelected];
    [but21 addTarget:self action:@selector(button:) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:but21];
    
    UIButton *but22 = [UIButton buttonWithType:UIButtonTypeCustom];
    but22.frame = CGRectMake(110, 220, 90, 40);
    but22.layer.cornerRadius = 5;
    but22.layer.masksToBounds = YES;
    but22.backgroundColor = [UIColor whiteColor];
    [but22 setTitle:@"影视" forState:UIControlStateNormal];
    [but22 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [but22 setTitleColor:[UIColor whiteColor] forState:UIControlStateSelected];
    [but22 setBackgroundImage:[UIImage imageNamed:@"background_main"] forState:UIControlStateSelected];
    [but22 addTarget:self action:@selector(button:) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:but22];
    
    UIButton *but23 = [UIButton buttonWithType:UIButtonTypeCustom];
    but23.frame = CGRectMake(210, 220, 90, 40);
    but23.layer.cornerRadius = 5;
    but23.layer.masksToBounds = YES;
    but23.backgroundColor = [UIColor whiteColor];
    [but23 setTitle:@"摄影" forState:UIControlStateNormal];
    [but23 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [but23 setTitleColor:[UIColor whiteColor] forState:UIControlStateSelected];
    [but23 setBackgroundImage:[UIImage imageNamed:@"background_main"] forState:UIControlStateSelected];
    [but23 addTarget:self action:@selector(button:) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:but23];
    
    UIButton *but24 = [UIButton buttonWithType:UIButtonTypeCustom];
    but24.frame = CGRectMake(310, 220, 90, 40);
    but24.layer.cornerRadius = 5;
    but24.layer.masksToBounds = YES;
    but24.backgroundColor = [UIColor whiteColor];
    [but24 setTitle:@"其他" forState:UIControlStateNormal];
    [but24 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [but24 setTitleColor:[UIColor whiteColor] forState:UIControlStateSelected];
    [but24 setBackgroundImage:[UIImage imageNamed:@"background_main"] forState:UIControlStateSelected];
    [but24 addTarget:self action:@selector(button:) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:but24];
    
    UIImageView *imageV1 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"1"]];
    imageV1.frame = CGRectMake(10, 130, 390, 30);
    [self.view addSubview:imageV1];
    
    UIImageView *imageV2 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"2"]];
    imageV2.frame = CGRectMake(10, 270, 390, 30);
    [self.view addSubview:imageV2];
    
    //////////////////////////////////////////////////////////////
    
    UIButton *but31 = [UIButton buttonWithType:UIButtonTypeCustom];
    but31.frame = CGRectMake(10, 310, 90, 40);
    but31.layer.cornerRadius = 5;
    but31.layer.masksToBounds = YES;
    but31.backgroundColor = [UIColor whiteColor];
    [but31 setTitle:@"人气最高" forState:UIControlStateNormal];
    [but31 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [but31 setTitleColor:[UIColor whiteColor] forState:UIControlStateSelected];
    [but31 setBackgroundImage:[UIImage imageNamed:@"background_main"] forState:UIControlStateSelected];
    [but31 addTarget:self action:@selector(button:) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:but31];
    
    UIButton *but32 = [UIButton buttonWithType:UIButtonTypeCustom];
    but32.frame = CGRectMake(110, 310, 90, 40);
    but32.layer.cornerRadius = 5;
    but32.layer.masksToBounds = YES;
    but32.backgroundColor = [UIColor whiteColor];
    [but32 setTitle:@"收藏最多" forState:UIControlStateNormal];
    [but32 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [but32 setTitleColor:[UIColor whiteColor] forState:UIControlStateSelected];
    [but32 setBackgroundImage:[UIImage imageNamed:@"background_main"] forState:UIControlStateSelected];
    [but32 addTarget:self action:@selector(button:) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:but32];
    
    UIButton *but33 = [UIButton buttonWithType:UIButtonTypeCustom];
    but33.frame = CGRectMake(210, 310, 90, 40);
    but33.layer.cornerRadius = 5;
    but33.layer.masksToBounds = YES;
    but33.backgroundColor = [UIColor whiteColor];
    [but33 setTitle:@"评论最多" forState:UIControlStateNormal];
    [but33 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [but33 setTitleColor:[UIColor whiteColor] forState:UIControlStateSelected];
    [but33 setBackgroundImage:[UIImage imageNamed:@"background_main"] forState:UIControlStateSelected];
    [but33 addTarget:self action:@selector(button:) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:but33];
    
    UIButton *but34 = [UIButton buttonWithType:UIButtonTypeCustom];
    but34.frame = CGRectMake(310, 310, 90, 40);
    but34.layer.cornerRadius = 5;
    but34.layer.masksToBounds = YES;
    but34.backgroundColor = [UIColor whiteColor];
    [but34 setTitle:@"编辑精选" forState:UIControlStateNormal];
    [but34 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [but34 setTitleColor:[UIColor whiteColor] forState:UIControlStateSelected];
    [but34 setBackgroundImage:[UIImage imageNamed:@"background_main"] forState:UIControlStateSelected];
    [but34 addTarget:self action:@selector(button:) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:but34];
    
    ////////////////////////////////////////////////////
    
    UIButton *but41 = [UIButton buttonWithType:UIButtonTypeCustom];
    but41.frame = CGRectMake(10, 410, 90, 40);
    but41.layer.cornerRadius = 5;
    but41.layer.masksToBounds = YES;
    but41.backgroundColor = [UIColor whiteColor];
    [but41 setTitle:@"30分钟前" forState:UIControlStateNormal];
    [but41 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [but41 setTitleColor:[UIColor whiteColor] forState:UIControlStateSelected];
    [but41 setBackgroundImage:[UIImage imageNamed:@"background_main"] forState:UIControlStateSelected];
    [but41 addTarget:self action:@selector(button:) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:but41];
    
    UIButton *but42 = [UIButton buttonWithType:UIButtonTypeCustom];
    but42.frame = CGRectMake(110, 410, 90, 40);
    but42.layer.cornerRadius = 5;
    but42.layer.masksToBounds = YES;
    but42.backgroundColor = [UIColor whiteColor];
    [but42 setTitle:@"1小时前" forState:UIControlStateNormal];
    [but42 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [but42 setTitleColor:[UIColor whiteColor] forState:UIControlStateSelected];
    [but42 setBackgroundImage:[UIImage imageNamed:@"background_main"] forState:UIControlStateSelected];
    [but42 addTarget:self action:@selector(button:) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:but42];
    
    UIButton *but43 = [UIButton buttonWithType:UIButtonTypeCustom];
    but43.frame = CGRectMake(210, 410, 90, 40);
    but43.layer.cornerRadius = 5;
    but43.layer.masksToBounds = YES;
    but43.backgroundColor = [UIColor whiteColor];
    [but43 setTitle:@"1月前" forState:UIControlStateNormal];
    [but43 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [but43 setTitleColor:[UIColor whiteColor] forState:UIControlStateSelected];
    [but43 setBackgroundImage:[UIImage imageNamed:@"background_main"] forState:UIControlStateSelected];
    [but43 addTarget:self action:@selector(button:) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:but43];
    
    UIButton *but44 = [UIButton buttonWithType:UIButtonTypeCustom];
    but44.frame = CGRectMake(310, 410, 90, 40);
    but44.layer.cornerRadius = 5;
    but44.layer.masksToBounds = YES;
    but44.backgroundColor = [UIColor whiteColor];
    [but44 setTitle:@"1年前" forState:UIControlStateNormal];
    [but44 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [but44 setTitleColor:[UIColor whiteColor] forState:UIControlStateSelected];
    [but44 setBackgroundImage:[UIImage imageNamed:@"background_main"] forState:UIControlStateSelected];
    [but44 addTarget:self action:@selector(button:) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:but44];
    
    UIImageView *imageV3 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"3"]];
    imageV3.frame = CGRectMake(10, 370, 390, 30);
    [self.view addSubview:imageV3];
    
    
}
- (void)button:(UIButton *)sender
{
    sender.selected = !sender.selected;
}
- (void)fabiao
{
    fabiaoViewController *NewView = [[fabiaoViewController alloc]init];
    [self.navigationController pushViewController:NewView animated:NO];
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSLog(@"触摸开始");
    //关闭第一响应者
    [bar resignFirstResponder];
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
