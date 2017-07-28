//
//  TableViewCell2.m
//  Share2
//
//  Created by LiTianYang on 2017/7/28.
//  Copyright © 2017年 LiTianYang. All rights reserved.
//

#import "TableViewCell2.h"

@interface TableViewCell2 ()
{
    UIImageView *_imageV;
    UILabel *_label;
}
@end

@implementation TableViewCell2

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self initSubView];
    }
    return self;
}

- (void)initSubView
{
    _imageV = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 394, 130)];
    _imageV.image = [UIImage imageNamed:self.imageName];
    [self addSubview:_imageV];
    
    _label = [[UILabel alloc] initWithFrame:CGRectMake(10, 130, 394, 20)];
    _label.backgroundColor = [UIColor whiteColor];
    _label.textColor = [UIColor blackColor];
    _label.font = [UIFont systemFontOfSize:12];
    [self addSubview:_label];
}
- (void)setImageName:(NSString *)imageName
{
    _imageV.image = [UIImage imageNamed:imageName];
}
- (void)setStr:(NSString *)str{
    _label.text = str;
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
