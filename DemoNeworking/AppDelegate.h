//
//  AppDelegate.h
//  DemoNeworking
//
//  Created by Prerna Sharma on 06/01/19.
//  Copyright © 2019 Prerna Sharma. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

