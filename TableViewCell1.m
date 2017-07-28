//
//  TableViewCell1.m
//  Share2
//
//  Created by LiTianYang on 2017/7/27.
//  Copyright © 2017年 LiTianYang. All rights reserved.
//

#import "TableViewCell1.h"
#import "Status1.h"

#define imagewith 145
#define imagehight 110

@interface TableViewCell1()
{
    UIImageView *_imageL1;
    UILabel *_label1;
    UILabel *_label2;
    UILabel *_label3;
    UILabel *_label4;
    UIButton *_but1;
    UIButton *_but2;
    UIButton *_but3;
}
@end

@implementation TableViewCell1
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self initSubView];
    }
    return self;
}

- (void)initSubView
{
    //左边图片
    _imageL1 = [[UIImageView alloc] init];
    [self addSubview:_imageL1];
    //标题
    _label1 = [[UILabel alloc] init];
    _label1.textColor = [UIColor blackColor];
    _label1.font = [UIFont systemFontOfSize:17];
    [self addSubview:_label1];
    //用户
    _label2 = [[UILabel alloc] init];
    _label2.textColor = [UIColor blackColor];
    _label2.font = [UIFont systemFontOfSize:16];
    [self addSubview:_label2];
    //内容
    _label3 = [[UILabel alloc] init];
    _label3.textColor = [UIColor blackColor];
    _label3.font = [UIFont systemFontOfSize:14];
    [self addSubview:_label3];
    //时间
    _label4 = [[UILabel alloc] init];
    _label4.textColor = [UIColor blackColor];
    _label4.font = [UIFont systemFontOfSize:14];
    [self addSubview:_label4];
    //but1
    _but1 = [UIButton buttonWithType:UIButtonTypeCustom];
    [self addSubview:_but1];
    //but2
    _but2 = [UIButton buttonWithType:UIButtonTypeCustom];
    [self addSubview:_but2];
    //but3
    _but3 = [UIButton buttonWithType:UIButtonTypeCustom];
    [self addSubview:_but3];
}




-(void)setStatus1:(Status1 *)status1
{
    NSLog(@"haha");
    //图片L1
    CGRect imaL1Rect = CGRectMake(0, 0, imagewith, imagehight);
    _imageL1.image = [UIImage imageNamed:status1.imaName];
    _imageL1.frame = imaL1Rect;
    
    //标题
    CGRect lab1 = CGRectMake(imagewith+15, 10, 145, 10);
    _label1.text = status1.bt;
    _label1.frame = lab1;
    
    //用户
    CGRect lab2 = CGRectMake(imagewith+15, 30, 145, 10);
    _label2.text = status1.name;
    _label2.frame = lab2;
    
    //内容
    CGRect lab3 = CGRectMake(imagewith+15, 50, 145, 10);
    _label3.text = status1.nr;
    _label3.frame = lab3;
    
    //时间
    CGRect lab4 = CGRectMake(imagewith+15, 70, 145, 10);
    _label4.text = status1.time;
    _label4.frame = lab4;
    
    //b1
    CGRect b1 = CGRectMake(165, 90, 60, 20);
    [_but1 setTitle:status1.n1 forState:UIControlStateNormal];
    [_but1 setTitleColor:[UIColor colorWithRed:58/255.0 green:145/255.0 blue:201/255.0 alpha:1] forState:UIControlStateNormal];
    [_but1 setImage:[UIImage imageNamed:status1.t1] forState:UIControlStateNormal];
    _but1.frame = b1;
    
    //b2
    CGRect b2 = CGRectMake(220, 90, 60, 20);
    [_but2 setTitle:status1.n2 forState:UIControlStateNormal];
    [_but2 setTitleColor:[UIColor colorWithRed:58/255.0 green:145/255.0 blue:201/255.0 alpha:1] forState:UIControlStateNormal];
    [_but2 setImage:[UIImage imageNamed:status1.t2] forState:UIControlStateNormal];
    _but2.frame = b2;
    
    //b3
    CGRect b3 = CGRectMake(275, 90, 60, 20);
    [_but3 setTitle:status1.n3 forState:UIControlStateNormal];
    [_but3 setTitleColor:[UIColor colorWithRed:58/255.0 green:145/255.0 blue:201/255.0 alpha:1] forState:UIControlStateNormal];
    [_but3 setImage:[UIImage imageNamed:status1.t3] forState:UIControlStateNormal];
    _but3.frame = b3;
}
- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
