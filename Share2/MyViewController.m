//
//  MyViewController.m
//  Share2
//
//  Created by LiTianYang on 2017/7/27.
//  Copyright © 2017年 LiTianYang. All rights reserved.
//

#import "MyViewController.h"
#import "ViewController1.h"
#import "ViewController2.h"
#import "ViewController3.h"
#import "ViewController4.h"
#import "ViewController5.h"
#import "AppDelegate.h"

@interface MyViewController ()

@end

@implementation MyViewController
//
- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor colorWithRed:237/255.0 green:238/255.0 blue:239/255.0 alpha:1];
    
    CGSize imageSize = CGSizeMake(82, 60);
    //vc1
    ViewController1 *vc1 = [[ViewController1 alloc] init];
    UINavigationController *vc1Nav = [[UINavigationController alloc] initWithRootViewController:vc1];
    UIImage *Image10 = [UIImage imageNamed:@"radio_button1_normal.png"];
    UIImage *Image11 = [UIImage imageNamed:@"radio_button1_pressed"];
    UIImage *image10 = [self scaleImageToSize:Image10 size:imageSize];
    UIImage *image11 = [self scaleImageToSize:Image11 size:imageSize];
    vc1Nav.tabBarItem.image = [image10 imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    vc1Nav.tabBarItem.imageInsets = UIEdgeInsetsMake(6 , 0, -6, 0);
    vc1Nav.tabBarItem.selectedImage = image11;
    UIImage *image = vc1Nav.tabBarItem.selectedImage;
    vc1Nav.tabBarItem.selectedImage = [image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    //vc2
    ViewController2 *vc2 = [[ViewController2 alloc] init];
    UINavigationController *vc2Nav = [[UINavigationController alloc] initWithRootViewController:vc2];
    UIImage *Image20 = [UIImage imageNamed:@"radio_button2_normal.png"];
    UIImage *image20 = [self scaleImageToSize:Image20 size:imageSize];
    UIImage *Image21 = [UIImage imageNamed:@"radio_button2_pressed"];
    UIImage *image21 = [self scaleImageToSize:Image21 size:imageSize];
    vc2Nav.tabBarItem.image = [image20 imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    vc2Nav.tabBarItem.selectedImage = [image21 imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    vc2Nav.tabBarItem.imageInsets = UIEdgeInsetsMake(6 , 0, -6, 0);
    
    //vc3
    ViewController3 *vc3 = [[ViewController3 alloc] init];
    UINavigationController *vc3Nav = [[UINavigationController alloc] initWithRootViewController:vc3];
    
    UIImage *Image30 = [UIImage imageNamed:@"radio_button3_normal.png"];
    UIImage *image30 = [self scaleImageToSize:Image30 size:imageSize];
    UIImage *Image31 = [UIImage imageNamed:@"radio_button3_pressed"];
    UIImage *image31 = [self scaleImageToSize:Image31 size:imageSize];
    vc3Nav.tabBarItem.image = [image30 imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    vc3Nav.tabBarItem.selectedImage = [image31 imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    vc3Nav.tabBarItem.imageInsets = UIEdgeInsetsMake(6 , 0, -6, 0);
    
    //vc4
    ViewController4 *vc4 = [[ViewController4 alloc] init];
    UINavigationController *vc4Nav = [[UINavigationController alloc] initWithRootViewController:vc4];
    
    UIImage *Image40 = [UIImage imageNamed:@"radio_button4_normal.png"];
    UIImage *image40 = [self scaleImageToSize:Image40 size:imageSize];
    UIImage *Image41 = [UIImage imageNamed:@"radio_button4_pressed"];
    UIImage *image41 = [self scaleImageToSize:Image41 size:imageSize];
    vc4Nav.tabBarItem.image = [image40 imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    vc4Nav.tabBarItem.selectedImage = [image41 imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    vc4Nav.tabBarItem.imageInsets = UIEdgeInsetsMake(6 , 0, -6, 0);
    
    //vc5
    ViewController5 *vc5 = [[ViewController5 alloc] init];
    UINavigationController *vc5Nav = [[UINavigationController alloc] initWithRootViewController:vc5];
    
    UIImage *Image50 = [UIImage imageNamed:@"radio_button5_normal.png"];
    UIImage *image50 = [self scaleImageToSize:Image50 size:imageSize];
    UIImage *Image51 = [UIImage imageNamed:@"radio_button5_pressed"];
    UIImage *image51 = [self scaleImageToSize:Image51 size:imageSize];
    vc5Nav.tabBarItem.image = [image50 imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    vc5Nav.tabBarItem.selectedImage = [image51 imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    vc5Nav.tabBarItem.imageInsets = UIEdgeInsetsMake(6 , 0, -6, 0);
    
    
    
    UITabBarController *tabbar = [[UITabBarController alloc] init];
    tabbar.viewControllers = [NSArray arrayWithObjects: vc1Nav,vc2Nav,vc3Nav,vc4Nav,vc5Nav, nil];
    //    self.window.rootViewController = tabbar;
    
    
    
    [[UINavigationBar appearance] setBarTintColor:[UIColor colorWithRed:58/255.0 green:145/255.0 blue:201/255.0 alpha:1]];
    [[UINavigationBar appearance] setTranslucent:YES];
    [[UITabBar appearance] setBarTintColor:[UIColor blackColor]];
    
    
    
    //
    ((AppDelegate *)([UIApplication sharedApplication].delegate)).window.rootViewController = tabbar;
    
    
    
    
}
- (UIImage *)scaleImageToSize:(UIImage *)img size:(CGSize)size
{
    UIGraphicsBeginImageContext(size);
    [img drawInRect:CGRectMake(0, 0, size.width, size.height)];
    UIImage* scaledImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return scaledImage;
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
