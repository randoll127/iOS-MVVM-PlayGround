#import "ResUpdateApi.h"
#import <JVUtil.h>
#import "LuRequestModel.h"
#import <ReactiveCocoa.h>
@interface ResUpdateApi() <JVRequestProtocol>
@end


@implementation ResUpdateApi{
    NSString* header;
    id body;
    NSString* method;
    ApiSecurityPolicy security;

}

-(NSString*)requestUrl{
    return @"http://i.lu.com:3001/mc/api/test";
}
+(Class)responseModel{
    return [LuRequestModel class];
}


-(void)success:(NSURLResponse*) response responseObject:(id)responseObject{
    LOG(DATA_TO_STRING(responseObject));
    NSError* error;
    LuRequestModel* model = [[[ResUpdateApi responseModel] alloc] initWithData:responseObject error:&error];
    if(!error){
        LOG(model);
    }
}
-(void)error:(NSURLResponse*) response responseObject:(id)responseObject error:(NSError*)error{
    
}

-(instancetype)header:(NSString*)__header{
    header = __header;
    return self;
}

-(instancetype)body:(id)__body{
    body = __body;

    return self;
}

-(instancetype)method:(NSString*)__method{
    method = __method;
    return self;
}

-(instancetype)security:(ApiSecurityPolicy)__security{
    security = __security;
    return self;
}


-(void)build{
   
}


@end
