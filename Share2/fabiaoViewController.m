//
//  fabiaoViewController.m
//  Share2
//
//  Created by LiTianYang on 2017/8/1.
//  Copyright © 2017年 LiTianYang. All rights reserved.
//

#import "fabiaoViewController.h"
#import "tupian.h"

@interface fabiaoViewController ()

@end

@implementation fabiaoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[[UIImage imageNamed:@"返回"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] style:UIBarButtonItemStylePlain target:self action:@selector(touchLeft)];
    
    UIView *vie1 = [[UIView alloc] initWithFrame:CGRectMake(10, 74, 394, 150)];
    
    vie1.backgroundColor = [UIColor yellowColor];
    UIButton *imaB = [UIButton buttonWithType:UIButtonTypeCustom];
    imaB.frame = CGRectMake(0, 0, 250, 150);
    [imaB setBackgroundImage:[UIImage imageNamed:@"222.jpg"] forState:UIControlStateNormal];
    [imaB addTarget:self action:@selector(touch) forControlEvents:UIControlEventTouchUpInside];
    [vie1 addSubview:imaB];
    
    UIImageView *imaV2 = [[UIImageView alloc] initWithFrame:CGRectMake(280, 40, 20, 20)];
    imaV2.backgroundColor = [UIColor blueColor];
    [vie1 addSubview:imaV2];
    
    UIButton *but1 = [UIButton buttonWithType:UIButtonTypeCustom];
    but1.frame = CGRectMake(310, 40, 60, 20);
    but1.backgroundColor = [UIColor blueColor];
    [vie1 addSubview:but1];
    
    UIButton *but2 = [UIButton buttonWithType:UIButtonTypeCustom];
    but2.frame = CGRectMake(280, 70, 90, 20);
    but2.backgroundColor = [UIColor blueColor];
    [vie1 addSubview:but2];
    
    UIImageView *imaV3 = [[UIImageView alloc] initWithFrame:CGRectMake(-10, 145, 414, 20)];
    imaV3.image = [UIImage imageNamed:@"11"];
    [vie1 addSubview:imaV3];
    
    [self.view addSubview:vie1];
    
    //======================================================================
    
    UIButton *b1 = [UIButton buttonWithType:UIButtonTypeCustom];
    b1.frame = CGRectMake(10, 240, 90, 30);
    b1.backgroundColor = [UIColor grayColor];
    [self.view addSubview:b1];
    
    UIButton *b2 = [UIButton buttonWithType:UIButtonTypeCustom];
    b2.frame = CGRectMake(110, 240, 90, 30);
    b2.backgroundColor = [UIColor grayColor];
    [self.view addSubview:b2];
    
    UIButton *b3 = [UIButton buttonWithType:UIButtonTypeCustom];
    b3.frame = CGRectMake(210, 240, 90, 30);
    b3.backgroundColor = [UIColor grayColor];
    [self.view addSubview:b3];
    
    UIButton *b4 = [UIButton buttonWithType:UIButtonTypeCustom];
    b4.frame = CGRectMake(310, 240, 90, 30);
    b4.backgroundColor = [UIColor grayColor];
    [self.view addSubview:b4];
    
    //====================================================================
    
    UIButton *b5 = [UIButton buttonWithType:UIButtonTypeCustom];
    b5.frame = CGRectMake(10, 280, 90, 30);
    b5.backgroundColor = [UIColor grayColor];
    [self.view addSubview:b5];
    
    UIButton *b6 = [UIButton buttonWithType:UIButtonTypeCustom];
    b6.frame = CGRectMake(110, 280, 90, 30);
    b6.backgroundColor = [UIColor grayColor];
    [self.view addSubview:b6];
    
    UIButton *b7 = [UIButton buttonWithType:UIButtonTypeCustom];
    b7.frame = CGRectMake(210, 280, 90, 30);
    b7.backgroundColor = [UIColor grayColor];
    [self.view addSubview:b7];
    
    UIButton *b8 = [UIButton buttonWithType:UIButtonTypeCustom];
    b8.frame = CGRectMake(310, 280, 90, 30);
    b8.backgroundColor = [UIColor grayColor];
    [self.view addSubview:b8];
    
    //=====================================================================
    
    UILabel *lab1 = [[UILabel alloc] initWithFrame:CGRectMake(0, 330, 414, 27)];
    lab1.backgroundColor = [UIColor whiteColor];
    lab1.text = @"  瞭望";
    [self.view addSubview:lab1];
    
    UILabel *lab2 = [[UILabel alloc] initWithFrame:CGRectMake(0, 362, 414, 150)];
    lab2.text = @"  在看宫崎骏的漫画时所感创作";
    lab2.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:lab2];
    
    UIButton *butt = [UIButton buttonWithType:UIButtonTypeCustom];
    butt.frame = CGRectMake(10, 520, 394, 35);
    butt.backgroundColor = [UIColor blueColor];
    [butt setTitle:@"发表" forState:UIControlStateNormal];
    [butt setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [self.view addSubview:butt];
    
    //自动登录button
    UIView *vi3 = [[UIView alloc] initWithFrame:CGRectMake(10, 560, 150, 25)];
    UIButton *butt3 = [[UIButton alloc] initWithFrame:CGRectMake(0, 2.5, 20, 20)];
    UIImage *image30 = [UIImage imageNamed:@"checkbox_unchecked"];
    UIImage *image31 = [UIImage imageNamed:@"checkbox_checked"];
    [butt3 setImage:image30 forState:UIControlStateNormal];
    [butt3 setImage:image31 forState:UIControlStateSelected];
    [butt3 addTarget:self action:@selector(button:) forControlEvents:UIControlEventTouchUpInside];
    [vi3 addSubview:butt3];
    
    
    [self.view addSubview:vi3];
    
    //自动登录label
    UILabel *lab3 = [[UILabel alloc]initWithFrame:CGRectMake(25, 0, 125, 25)];
    lab3.text = @"禁止下载";
    lab3.textColor = [UIColor blackColor];
    [vi3 addSubview:lab3];
}
- (void)button:(UIButton *)sender
{
    sender.selected = !sender.selected;
}
- (void)touch
{
    tupian *NewView = [[tupian alloc]init];
    [self.navigationController pushViewController:NewView animated:NO];
}
- (void)touchLeft
{
    [self.navigationController popViewControllerAnimated:NO];
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
