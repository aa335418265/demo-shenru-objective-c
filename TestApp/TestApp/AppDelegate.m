//
//  AppDelegate.m
//  TestApp
//
//  Created by fenglh on 2018/5/4.
//  Copyright © 2018年 BlueMoon. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {


    return YES;
}

//+ (BOOL)resolveClassMethod:(SEL)sel {
//    NSString *method =NSStringFromSelector(sel);
//
//    NSLog(@"ClassMethod调用:%@", method);
//    return YES;
//}
//
//
//+ (BOOL)resolveInstanceMethod:(SEL)sel {
//    NSString *method =NSStringFromSelector(sel);
//    if (sel == @selector(test:age:)) {
//        NSLog(@"我是test");
//    }
//    NSLog(@"InstanceMethod调用:%@", method);
//    return YES;
//}

//- (void)test:(NSString *)name {
//    NSLog(@"我的名字是：%@",name);
//}


//- (void)test:(NSInteger)age {
//    NSLog(@"我的年龄是：%ld",age);
//}
//
//- (void)test:(NSString *)name age:(NSInteger)age {
//    NSLog(@"我的名字和年龄分别是：%@，%ld", name, age);
//}
//
//- (void)test:(NSString *)name age2:(NSInteger )age2 {
//    NSLog(@"我的名字和年龄分别是：%@，%ld", name, age2);
//}
//
//- (void)test:(NSString *)name :(NSInteger )age {
//    NSLog(@"我的名字和年龄分别是：%@，%ld", name, age);
//}




@end
