//
//  ResUpdateApi2.m
//  mvvm-playground
//
//  Created by fengchao on 2017/6/9.
//  Copyright © 2017年 fengchao. All rights reserved.
//

#import "ResUpdateApi2.h"
#import <JVUtil.h>
#import "LuRequestModel.h"
#import <ReactiveCocoa.h>
@interface ResUpdateApi2() <JVRequestProtocol>
@end
@implementation ResUpdateApi2
-(NSString*)requestUrl{
    return @"http://i.lu.com:3001/mc/api/test2";
}
+(Class)responseModel{
    return [LuRequestModel class];
}



@end
