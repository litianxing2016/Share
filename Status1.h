//
//  Status1.h
//  Share2
//
//  Created by LiTianYang on 2017/7/27.
//  Copyright © 2017年 LiTianYang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Status1 : NSObject
@property (nonatomic,copy) NSString *imaName;
@property (nonatomic,copy) NSString *bt;
@property (nonatomic,copy) NSString *name;
@property (nonatomic,copy) NSString *nr;
@property (nonatomic,copy) NSString *time;
@property (nonatomic,copy) NSString *n1;
@property (nonatomic,copy) NSString *n2;
@property (nonatomic,copy) NSString *n3;
@property (nonatomic,copy) NSString *t1;
@property (nonatomic,copy) NSString *t2;
@property (nonatomic,copy) NSString *t3;
#pragma mark 根据字典初始化微博对象
-(Status1 *)initWithDictionary:(NSDictionary *)dic;

#pragma mark 初始化微博对象（静态方法）
+(Status1 *)statusWithDictionary:(NSDictionary *)dic;
@end
