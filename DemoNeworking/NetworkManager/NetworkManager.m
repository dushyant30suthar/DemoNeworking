//
//  NetworkManager.m
//  DemoNeworking
//
//  Created by Prerna Sharma on 06/01/19.
//  Copyright © 2019 Prerna Sharma. All rights reserved.
//

#import "NetworkManager.h"
#import "AppConstants.h"
@implementation NetworkManager
static NetworkManager *sharedManager = nil;

+ (NetworkManager*)sharedManager {
    static dispatch_once_t once;
    dispatch_once(&once, ^
                  {
                      sharedManager = [[NetworkManager alloc] init];
                  });
    return sharedManager;
}

- (id)init {
    if ((self = [super init])) {
    }
    return self;
}

-(AFURLSessionManager *)GetNetworkManager
{
    if (manager == nil) {
        NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
      manager = [[AFURLSessionManager alloc] initWithSessionConfiguration:configuration];
    }
    return manager;
  
}

-(NSURLRequest *)GetLoginRequest:(NSString*)name//:(NSString *)strName password:(NSString*)strPassword
{
    
    NSURL *URL = [NSURL URLWithString:URLL];
    return [NSURLRequest requestWithURL:URL];
   // [self ExecuteNetworkRequest:[NSURLRequest requestWithURL:URL]];
   
}

-(void)ExecuteNetworkRequest:(NSURLRequest*)request completionHandler:(void (^)(NSData *data, NSURLResponse *response, NSError *error))Handler{
    NSURLSessionDataTask *dataTask = [[self GetNetworkManager] dataTaskWithRequest:request completionHandler:^(NSURLResponse *response, id responseObject, NSError *error) {
        if (error) {
            NSLog(@"Error: %@", error);
        } else {
            NSLog(@"%@ %@", response, responseObject);
            Handler(response,responseObject,error);
        }
    }];
    [dataTask resume];
}
-(void)GetData
{
  

    
    
}
@end
