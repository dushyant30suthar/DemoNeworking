//
//  ViewController.m
//  DemoNeworking
//
//  Created by Prerna Sharma on 06/01/19.
//  Copyright © 2019 Prerna Sharma. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSURLRequest * req = [[NetworkManager sharedManager]GetLoginRequest:@""];//:@"" password:@""];
    [[NetworkManager sharedManager] ExecuteNetworkRequest:req completionHandler:^(NSData * _Nonnull data, NSURLResponse * _Nonnull response, NSError * _Nonnull error) {
        if (error) {
            
        }
        else
        {
            NSLog(@"%@  VIEW: ",response);
            
        }
    }];
}


@end
