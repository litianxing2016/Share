//
//  scCell.m
//  Share2
//
//  Created by LiTianYang on 2017/8/2.
//  Copyright © 2017年 LiTianYang. All rights reserved.
//

#import "scCell.h"

@implementation scCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        //左边图片
        _imaV = [[UIImageView alloc] init];
        _imaV.backgroundColor = [UIColor yellowColor];
        [self addSubview:_imaV];
        //标题
        _lab1 = [[UILabel alloc] init];
        _lab1.textColor = [UIColor blackColor];
        _lab1.font = [UIFont systemFontOfSize:17];
        [self addSubview:_lab1];
        //用户
        _lab2 = [[UILabel alloc] init];
        _lab2.textColor = [UIColor blackColor];
        _lab2.font = [UIFont systemFontOfSize:16];
        [self.contentView addSubview:_lab2];
        //内容
        _lab3 = [[UILabel alloc] init];
        _lab3.textColor = [UIColor blackColor];
        _lab3.font = [UIFont systemFontOfSize:14];
        [self.contentView addSubview:_lab3];
        //时间
        _lab4 = [[UILabel alloc] init];
        _lab4.textColor = [UIColor blackColor];
        _lab4.font = [UIFont systemFontOfSize:14];
        [self.contentView addSubview:_lab4];
        //but1
        _but1 = [UIButton buttonWithType:UIButtonTypeCustom];
        [self.contentView addSubview:_but1];
        _b1 = [[UILabel alloc] init];
        _b1.textColor = [UIColor blueColor];
        [self.contentView addSubview:_b1];
        //but2
        _but2 = [UIButton buttonWithType:UIButtonTypeCustom];
        [self.contentView addSubview:_but2];
        _b2 = [[UILabel alloc] init];
        _b2.textColor = [UIColor blueColor];
        [self.contentView addSubview:_b2];
        //but3
        _but3 = [UIButton buttonWithType:UIButtonTypeCustom];
        [self.contentView addSubview:_but3];
        _b3 = [[UILabel alloc] init];
        _b3.textColor = [UIColor blueColor];
        [self.contentView addSubview:_b3];
    }
    return self;
}
- (void)layoutSubviews
{
    [super layoutSubviews];
    self.imaV.frame = CGRectMake(0, 0, 145, 110);
    self.lab1.frame = CGRectMake(160, 10, 145, 10);
    self.lab2.frame = CGRectMake(160, 30, 145, 10);
    self.lab3.frame = CGRectMake(160, 50, 145, 10);
    self.lab4.frame = CGRectMake(160, 70, 145, 10);
    self.but1.frame = CGRectMake(165, 90, 20, 20);
    self.b1.frame = CGRectMake(190, 90, 30, 20);
    self.but2.frame = CGRectMake(230, 90, 20, 20);
    self.b2.frame = CGRectMake(255, 90, 30, 20);
    self.but3.frame = CGRectMake(295, 90, 20, 20);
    self.b3.frame = CGRectMake(315, 90, 30, 20);
}
@end
