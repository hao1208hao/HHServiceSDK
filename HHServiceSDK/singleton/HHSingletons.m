//
//  HHSingletons.m
//  HHServiceSDK
//
//  Created by haohao on 2018/11/8.
//  Copyright © 2018年 haohao. All rights reserved.
//

#import "HHSingletons.h"

@implementation HHSingletons

static HHSingletons *shareInstance = nil;// 2声明一个static类型的类变量

+(HHSingletons *)shareInstance{
    static dispatch_once_t  once; //3声明一个只执行一次的任务
    
    dispatch_once(&once,^{
        
        shareInstance = [[self alloc] init];// 调用dispatch_once执行该任务指定的代码块，在该代码块中实例化上文声明的类变量
        
    });
    
    return shareInstance;// 返回在整个应用的生命周期中只会被实例化一次的变量（不止调用一次，但是只实例化一次）
}

@end
