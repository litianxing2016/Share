//
//  head.m
//  Share2
//
//  Created by LiTianYang on 2017/7/27.
//  Copyright © 2017年 LiTianYang. All rights reserved.
//

#import "head.h"
@interface head()<UIScrollViewDelegate>
{
    UIPageControl *pc;
    UIScrollView *sv;
}
@end
@implementation head
-(instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if(self){
        [self addUI];
    }
    return self;
}
-(void)addUI{
    sv = [[UIScrollView alloc] initWithFrame:self.bounds];
    [self addSubview:sv];
    sv.contentSize = CGSizeMake(394*4, 150);
    for (int i=1; i<=4; i++) {
        NSString *name = [NSString stringWithFormat:@"main_img%d",i];
        UIImage *image = [UIImage imageNamed:name];
        UIImageView *imageV = [[UIImageView alloc] initWithFrame:CGRectMake(394*(i-1), 0, 394, 150)];
        imageV.image = image;
        [sv addSubview:imageV];
    }
    sv.pagingEnabled = YES;
    sv.indicatorStyle = UIScrollViewIndicatorStyleWhite;
    sv.showsHorizontalScrollIndicator = NO;
    sv.showsVerticalScrollIndicator = NO;
    sv.delegate = self;
    
    pc = [[UIPageControl alloc] initWithFrame:CGRectMake(0, 90, 394, 50)];
    [self addSubview:pc];
    pc.numberOfPages = 4;
    [pc addTarget:self action:@selector(page:) forControlEvents:UIControlEventValueChanged];
}
- (void)page:(UIPageControl *)p
{
    NSLog(@"----->%ld",p.currentPage);
    [sv setContentOffset:CGPointMake(414*p.currentPage, 0) animated:YES];
}
- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView
{
    NSInteger number = (NSInteger)scrollView.contentOffset.x/414;
    pc.currentPage = number;
}
@end
