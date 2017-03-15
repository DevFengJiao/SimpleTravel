//
//  AppDelegate.h
//  SimpleTravel
//
//  Created by hzyx01 on 17/3/15.
//  Copyright © 2017年 hzyx01. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

