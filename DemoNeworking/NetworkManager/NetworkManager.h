//
//  NetworkManager.h
//  DemoNeworking
//
//  Created by Prerna Sharma on 06/01/19.
//  Copyright © 2019 Prerna Sharma. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AFNetworking.h"

NS_ASSUME_NONNULL_BEGIN

@interface NetworkManager : NSObject
{
    AFURLSessionManager *  manager;
}
+ (id)sharedManager;
-(void)GetData;
-(void)ExecuteNetworkRequest:(NSURLRequest*)request completionHandler:(void (^)(NSData *data, NSURLResponse *response, NSError *error))Handler;
-(NSURLRequest*)GetLoginRequest:(NSString *)name;//:(NSString *)strName password:(NSString*)strPassword;
@end

NS_ASSUME_NONNULL_END
