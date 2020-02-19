//
//  OViewController.m
//  NSSting-Demo
//
//  Created by wangzelong on 2020/2/19.
//  Copyright © 2020 wangzelong. All rights reserved.
//

#import "OViewController.h"

@interface OViewController ()

@end

@implementation OViewController


/*
 - (BOOL)isAbsolutePath;
 - (NSString *)lastPathComponent;//获得最后一个目录
 - (NSString *)stringByDeletingLastPathComponent;//删除最后一个目录
 - (NSString *)stringByAppendingPathComponent:(NSString *)str;// 在路径的后面拼接一个目录 (也可以使用stringByAppendingString:或者stringByAppendingFormat:拼接字符串内容)
 */
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];

    [self isAbsolutePath];
    
    [self lastPathComponent];
    
    [self stringByDeletingLastPathComponent];
    
    [self stringByAppendingPathComponent];
}

// 是否为绝对路径
- (void)isAbsolutePath {
    // 其实就是判断是否以/开头
    NSString *str = @"/Users/wangzelong/Desktop/Lion.txt";
    if ([str isAbsolutePath]) {
        NSLog(@"是绝对路径");
    } else {
        NSLog(@"不是绝对路径");
    }
}

//获得最后一个目录
- (void)lastPathComponent {
    // 截取最后一个/后面的内容
    NSString *str = @"/Users/wangzelong/Desktop/Lion.txt";
    NSString *component = [str lastPathComponent];
    NSLog(@"component = %@", component);
}

// 删除最后一个目录
- (void)stringByDeletingLastPathComponent {

    // 其实就是上次最后一个/和之后的内容
    NSString *str = @"/Users/wangzelong/Desktop/Lion.txt";
    NSString *newStr = [str stringByDeletingLastPathComponent];
    NSLog(@"newStr = %@", newStr);
    //打印结果:newStr = /Users/wangzelong/Desktop
}

// 在路径的后面拼接一个目录 (也可以使用stringByAppendingString:或者stringByAppendingFormat:拼接字符串内容)
- (void)stringByAppendingPathComponent {

    // 其实就是在最后面加上/和要拼接得内容
    // 注意会判断后面有没有/有就不添加了, 没有就添加, 并且如果有多个会替换为1个
    //    NSString *str = @"/Users/NJ-Lee/Desktop";
    NSString *str = @"/Users/wangzelong/Desktop";
    NSString *newStr = [str stringByAppendingPathComponent:@"Lion"];
    NSLog(@"newStr = %@", newStr);
    //打印结果:newStr = /Users/wangzelong/Desktop/Lion
}

@end
