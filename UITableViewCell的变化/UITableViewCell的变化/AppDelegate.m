//
//  AppDelegate.m
//  UITableViewCell的变化
//
//  Created by zhudong on 2016/10/10.
//  Copyright © 2016年 zhudong. All rights reserved.
//

#import "AppDelegate.h"
#import <JSPatchPlatform/JSPatch.h>

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
//    [JSPatch testScriptInBundle];
    
    [JSPatch startWithAppKey:@"01c96c0815cc3a68"];
////    [JSPatch setupRSAPublicKey:@"-----BEGIN PUBLIC KEY-----\nMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEApgeqKYKPVFk1dk2JGrKv\nEaSqqXxU2S1x32xn2M2jWK/lz7YOPRFcPhH8UgBgpUQGqbW2ooOrtlE0Ur6WHOgZ\nHvozA71xKEgpQhLbX8ourcyC638zfEQJ3aUezjy5ADzlIAWr3ayBYmLBYj4OkRRG\nbffxwA+i16jNVFWJFzgCrRs44cpn+nX0VsNrNjntt59J3xIhMGE+eQ2K9WDwYmv4\nsw8+3MsW++z2Uornmi9v2atZnBKd/dBsGz05d++NBks7b2ot/TAiMRnit+VNTZrs\n1rYQOcoCJlMUK4GDkK6bdKAPfVcD5vy2PAxDA84P2txcSkFozmZABcVvSyASB6Bn\nMQIDAQAB\n-----END PUBLIC KEY-----"];
//
////    //打印热修复的日志
//    [JSPatch setupLogger:^(NSString *msg) {
//        NSLog(@"msg回调----------- %@", msg);
//    }];
////    //执行热修复事件的回调
//    [JSPatch setupCallback:^(JPCallbackType type, NSDictionary *data, NSError *error) {
//        switch (type) {
//            case JPCallbackTypeUpdate: {
//                NSLog(@"updated %@ %@", data, error);
//                break;
//            }
//            case JPCallbackTypeRunScript: {
//                NSLog(@"run script %@ %@", data, error);
//                break;
//            }
//            default:
//                break;
//        }
//    }];
//#ifdef DEBUG
//    [JSPatch setupDevelopment];
//#endif

    [JSPatch sync];
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
