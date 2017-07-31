//
//  ViewController.m
//  Share2
//
//  Created by LiTianYang on 2017/7/27.
//  Copyright © 2017年 LiTianYang. All rights reserved.
//

#import "ViewController.h"
#import "MyViewController.h"

@interface ViewController ()<UITextFieldDelegate>
{
    UIButton *but3;
    UITextField *field2;
    UITextField *field1;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self initView];
    
}
- (void)initView
{
    //
    self.view.backgroundColor = [UIColor colorWithRed:62/255.0 green:148/255.0 blue:206/255.0 alpha:1];
    
    //图标logo
    UIImageView *imageV = [[UIImageView alloc] initWithFrame:CGRectMake(self.view.frame.size.width/2.0-100, 100, 200, 200)];
    imageV.backgroundColor = [UIColor colorWithRed:62/255.0 green:148/255.0 blue:206/255.0 alpha:1];
    UIImage *image = [UIImage imageNamed:@"logo"];
    imageV.image = image;
    [self.view addSubview:imageV];
    
    //SHARE
    UILabel *lab1 = [[UILabel alloc] initWithFrame:CGRectMake((self.view.frame.size.width-200)/2.0, 300, 200, 30)];
    lab1.text = @"SHARE";
    lab1.textColor = [UIColor whiteColor];
    lab1.font = [UIFont systemFontOfSize:30];
    lab1.textAlignment = NSTextAlignmentCenter;
    lab1.backgroundColor = [UIColor colorWithRed:62/255.0 green:148/255.0 blue:206/255.0 alpha:1];
    [self.view addSubview: lab1];
    
    //输入账户
    field1 = [[UITextField alloc] initWithFrame:CGRectMake(self.view.frame.size.width/2-140, 350, 300, 50)];
    field1.backgroundColor = [UIColor whiteColor];
    field1.layer.cornerRadius = 5;
    field1.layer.masksToBounds = YES;
    field1.delegate = self;
    field1.enabled = YES;
    
    //创建左侧视图
    UIImage *im = [UIImage imageNamed:@"user_img"];
    UIImage *ima = [UIImage imageNamed:@"line"];
    UIImageView *iv = [[UIImageView alloc] initWithImage:im];
    UIImageView *iva = [[UIImageView alloc] initWithFrame:CGRectMake(41, 84, 2, 32)];
    UIView *lv = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 50, 200)];//宽度根据需求进行设置，高度必须大于 textField 的高度
    iva.image = ima;
    lv.backgroundColor = [UIColor whiteColor];
    iv.center = lv.center;
    
    [lv addSubview:iv];
    [lv addSubview:iva];

    //设置 textField 的左侧视图
    //设置左侧视图的显示模式
    field1.leftViewMode = UITextFieldViewModeAlways;
    field1.leftView = lv;
    
    [self.view addSubview:field1];
    
    //输入密码
    field2 = [[UITextField alloc] initWithFrame:CGRectMake(self.view.frame.size.width/2-140, 420, 300, 50)];
    field2.backgroundColor = [UIColor whiteColor];
    field2.layer.cornerRadius = 5;
    field2.layer.masksToBounds = YES;
    field2.secureTextEntry = YES;
    field2.delegate = self;
    
    //创建左侧视图
    UIImage *im2 = [UIImage imageNamed:@"pass_img"];
    UIImageView *iv2 = [[UIImageView alloc] initWithImage:im2];
    UIImageView *iva2 = [[UIImageView alloc] initWithFrame:CGRectMake(41, 84, 2, 32)];
    UIView *lv2 = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 50, 200)];//宽度根据需求进行设置，高度必须大于 textField 的高度
    lv2.backgroundColor = [UIColor whiteColor];
    iv2.center = lv2.center;
    iva2.image = ima;
    [lv2 addSubview:iv2];
    [lv2 addSubview:iva2];
    
    //设置 textField 的左侧视图
    //设置左侧视图的显示模式
    field2.leftViewMode = UITextFieldViewModeAlways;
    field2.leftView = lv2;
    
    [self.view addSubview:field2];
    
    //登录button
    UIButton *button1 = [UIButton buttonWithType:UIButtonTypeCustom];
    button1.backgroundColor = [UIColor colorWithRed:62/255.0 green:148/255.0 blue:206/255.0 alpha:1];
    button1.frame = CGRectMake( 100, 500, 100, 30);
    [button1 setTitle:@"登录" forState:UIControlStateNormal];
    [button1 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    button1.layer.borderColor = [UIColor whiteColor].CGColor;
    button1.layer.borderWidth = 2;
    button1.layer.cornerRadius = 5;
    button1.layer.masksToBounds = YES;
//    [button1 setShowsTouchWhenHighlighted:YES];
    [self.view addSubview:button1];
    [button1 addTarget:self action:@selector(denlu) forControlEvents:UIControlEventTouchUpInside];
    
    //注册button
    UIButton *button2 = [UIButton buttonWithType:UIButtonTypeCustom];
    button1.backgroundColor = [UIColor colorWithRed:62/255.0 green:148/255.0 blue:206/255.0 alpha:1];
    button2.frame = CGRectMake( 240, 500, 100, 30);
    [button2 setTitle:@"注册" forState:UIControlStateNormal];
    [button2 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    button2.layer.borderColor = [UIColor whiteColor].CGColor;
    button2.layer.borderWidth = 2;
    button2.layer.cornerRadius = 5;
    button2.layer.masksToBounds = YES;
//    [button2 setShowsTouchWhenHighlighted:YES];
    [self.view addSubview:button2];
    
    //自动登录button
    UIView *vi3 = [[UIView alloc] initWithFrame:CGRectMake(67, 540, 150, 25)];
    but3 = [[UIButton alloc] initWithFrame:CGRectMake(0, 2.5, 20, 20)];
    UIImage *image30 = [UIImage imageNamed:@"checkbox_unchecked"];
    UIImage *image31 = [UIImage imageNamed:@"checkbox_checked"];
    [but3 setImage:image30 forState:UIControlStateNormal];
    [but3 setImage:image31 forState:UIControlStateSelected];
    [but3 addTarget:self action:@selector(button:) forControlEvents:UIControlEventTouchUpInside];
    [vi3 addSubview:but3];
    
    
    [self.view addSubview:vi3];
    
    //自动登录label
    UILabel *lab3 = [[UILabel alloc]initWithFrame:CGRectMake(25, 0, 125, 25)];
    lab3.text = @"自动登录";
    lab3.textColor = [UIColor colorWithRed:20/255.0 green:98/255.0 blue:156/255.0 alpha:1];
    [vi3 addSubview:lab3];
    
}
- (void)denlu
{
    MyViewController *vc = [[MyViewController alloc] init];
    vc.modalTransitionStyle =
    UIModalTransitionStyleFlipHorizontal;
    [self presentViewController:vc animated:YES completion:^{
        
    }];
}
- (void)button:(UIButton *)sender
{
    sender.selected = !sender.selected;
}
- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    NSLog(@"你点了return键");
    //回收键盘,取消第一响应者
    [textField resignFirstResponder];
    [textField endEditing:YES];
    
//    NSString *str = textField.text;
//    if([str isEqualToString:@"123"]){
//        NSLog(@"ok");
//    }
    return YES;
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSLog(@"触摸开始");
    //关闭第一响应者
    [field1 resignFirstResponder];
    [field2 resignFirstResponder];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
