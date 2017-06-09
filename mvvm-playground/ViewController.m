//
//  ViewController.m
//  mvvm-playground
//
//  Created by fengchao on 2017/3/30.
//  Copyright © 2017年 fengchao. All rights reserved.
//

#import "ViewController.h"
#import <CommonCrypto/CommonDigest.h>
#import <JVNetwork.h>
#import "ResUpdateApi.h"
#import "ResUpdateApi2.h"
@interface ViewController (){
    ResUpdateApi* api1;
    ResUpdateApi2* api2;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor redColor];
    api1 = [ResUpdateApi new];
    api2 = [ResUpdateApi2 new];
    
    RACSignal* signals = [api2.signal then:^RACSignal *{
        return api1.signal;
    }];
    [signals subscribeNext:^(id x){
                NSLog(@"%@",x);
            }];
    
    [api2 request:^(id x){
        NSLog(@"%@",x);
    }];
//
//    [[ResUpdateApi2 new] request:^(id x){
//        NSLog(@"%@",x);
//    }];
    
}

+ (NSString *)genSHA1WithFilePath:(NSString *) filePath{
    NSFileManager *fileManager = [NSFileManager defaultManager];
    NSMutableString* output = [NSMutableString stringWithCapacity:CC_SHA1_DIGEST_LENGTH * 2];
    
    if ([fileManager fileExistsAtPath:filePath]) {
        NSData *data = [fileManager contentsAtPath:filePath];
        //使用对应的CC_SHA1,CC_SHA256,CC_SHA384,CC_SHA512的长度分别是20,32,48,64
        uint8_t digest[CC_SHA1_DIGEST_LENGTH];
        //使用对应的CC_SHA256,CC_SHA384,CC_SHA512
        CC_SHA1(data.bytes, (unsigned int)data.length, digest);
        
        for(int i = 0; i < CC_SHA1_DIGEST_LENGTH; i++){
            [output appendFormat:@"%02x", digest[i]];
        }
    }
    
    return output;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




@end
