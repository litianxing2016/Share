//
//  Status1.m
//  Share2
//
//  Created by LiTianYang on 2017/7/27.
//  Copyright © 2017年 LiTianYang. All rights reserved.
//

#import "Status1.h"

@implementation Status1
#pragma mark 根据字典初始化微博对象
-(Status1 *)initWithDictionary:(NSDictionary *)dic{
    if(self=[super init]){
        self.imaName=dic[@"imaName"];
        self.bt=dic[@"bt"];
        self.name=dic[@"name"];
        self.nr=dic[@"nr"];
        self.time=dic[@"time"];
        self.n1=dic[@"n1"];
        self.n2=dic[@"n2"];
        self.n3=dic[@"n3"];
        self.t1=dic[@"t1"];
        self.t2=dic[@"t2"];
        self.t3=dic[@"t3"];
    }
    return self;
}

#pragma mark 初始化微博对象（静态方法）
+(Status1 *)statusWithDictionary:(NSDictionary *)dic{
    Status1 *status=[[Status1 alloc]initWithDictionary:dic];
    return status;
}
@end
