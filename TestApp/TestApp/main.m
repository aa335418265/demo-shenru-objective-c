//
//  main.m
//  TestApp
//
//  Created by fenglh on 2018/5/4.
//  Copyright © 2018年 BlueMoon. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import <objc/runtime.h>


@interface TestClass : NSObject
{
    @public
    int myInt;
    NSString *name;
    
}
@property (nonatomic, assign) NSInteger age; ///< 年龄
@end

@implementation TestClass
@end

void Endianness()
{
    int a = 0x12345678;
    if( *((char*)&a) == 0x12)
        printf("Big Endian");
    else
        printf("Little Endian");
}

int main(int argc, char * argv[]) {
    Endianness();
    int numb = 12;
    int *p = &numb;
    NSLog(@"指针p大小:%zu", sizeof(p));

    //创建实例tcA
    TestClass *tcA = [[TestClass alloc] init];
    tcA->myInt = 100;
    tcA.age = 7;
    tcA->name = @"libai";

    //创建实例tcB
    TestClass *tcB = [[TestClass alloc] init];;
    tcB->myInt = 101;
    tcB.age = 5;
    tcB->name = @"gongben";


    long tcSize = class_getInstanceSize([TestClass class]);

    NSData *tcAData = [NSData dataWithBytes:(__bridge const void *)tcA length:tcSize];
    NSData *tcBData = [NSData dataWithBytes:(__bridge const void *)tcB length:tcSize];


    NSLog(@"TestClass object tcA contans %@", tcAData);
    NSLog(@"TestClass object tcB contans %@", tcBData);
    NSLog(@"tcSize size= %zu", tcSize);
    NSLog(@"TestCalss memory address = %p", [TestClass class]);



}
