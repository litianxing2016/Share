//
//  tupian.m
//  Share2
//
//  Created by LiTianYang on 2017/8/1.
//  Copyright © 2017年 LiTianYang. All rights reserved.
//

#import "tupian.h"
#import "MycollViewCell.h"


@interface tupian ()<UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout>

@end

@implementation tupian

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *rightButton = [UIButton buttonWithType:UIButtonTypeCustom];
    rightButton.frame = CGRectMake(0, 0, 50, 25);
//    [rightButton setBackgroundImage: forState:UIControlStateNormal];
    rightButton.layer.borderColor = [UIColor whiteColor].CGColor;
    rightButton.layer.borderWidth = 2;
    rightButton.layer.cornerRadius = 5;
    rightButton.layer.masksToBounds = YES;
    [rightButton setTitle:@"上传" forState:UIControlStateNormal];
    [rightButton setBackgroundColor:[UIColor colorWithRed:80/255.0 green:152/255.0 blue:197/255.0 alpha:1]];
    [rightButton addTarget:self action:@selector(shangchuan) forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *rightItem = [[UIBarButtonItem alloc] initWithCustomView:rightButton];
    self.navigationItem.rightBarButtonItem = rightItem;
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[[UIImage imageNamed:@"返回"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] style:UIBarButtonItemStylePlain target:self action:@selector(touchLeft)];
    
    UICollectionViewFlowLayout *layout =
    [[UICollectionViewFlowLayout alloc] init];
    
    //    layout.itemSize = CGSizeMake(50, 50);
    layout.minimumLineSpacing = 1.5;
    layout.minimumInteritemSpacing = 1.5;
    layout.sectionInset = UIEdgeInsetsMake(1, 1, 0, 0);
    layout.scrollDirection = UICollectionViewScrollDirectionVertical;
    
    UICollectionView *cv = [[UICollectionView alloc]
                            initWithFrame:CGRectMake(0, 64, 414, 736) collectionViewLayout:layout];
    [self.view addSubview:cv];
    cv.backgroundColor = [UIColor whiteColor];
    cv.delegate = self;
    cv.dataSource = self;
    
    [cv registerClass:[MycollViewCell class]
forCellWithReuseIdentifier:@"cell"];
    [cv registerClass:[UICollectionReusableView class]
forSupplementaryViewOfKind:UICollectionElementKindSectionHeader
  withReuseIdentifier:@"header"];
}
- (void)shangchuan
{
    UIAlertController *control = [UIAlertController alertControllerWithTitle:@"选择" message:@"是否要上传" preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *act1 = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        
    }];
    UIAlertAction *act2 = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        
    }];
    
    [control addAction:act1];
    [control addAction:act2];
    
    [self presentViewController:control animated:YES completion:^{
        
    }];

}
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 20;
}
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    MycollViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
    cell.imagV.image = [UIImage imageNamed:@"333-0"];
    return cell;
}
- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    MycollViewCell *cell = (MycollViewCell *)[collectionView cellForItemAtIndexPath:indexPath];
    if ([cell.is isEqualToValue:@YES]) {
        cell.imagV.image = [UIImage imageNamed:@"333-1"];
        cell.is = @NO;
    } else {
        cell.imagV.image = [UIImage imageNamed:@"333-0"];
        cell.is = @YES;
    }
}
-(CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    return CGSizeMake(100, 100);
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
