//
//  MycollViewCell.m
//  Share2
//
//  Created by LiTianYang on 2017/8/1.
//  Copyright © 2017年 LiTianYang. All rights reserved.
//

#import "MycollViewCell.h"

@implementation MycollViewCell
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.imagV = [[UIImageView alloc] init];
        [self.contentView addSubview:_imagV];
        self.is = @YES;
    }
    return self;
}
- (void)layoutSubviews
{
    [super layoutSubviews];
    self.imagV.frame = CGRectMake(0, 0, 100, 100);
    
}
@end
