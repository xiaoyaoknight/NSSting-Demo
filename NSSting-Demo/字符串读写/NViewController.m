//
//  NViewController.m
//  NSSting-Demo
//
//  Created by wangzelong on 2020/2/14.
//  Copyright © 2020 wangzelong. All rights reserved.
//

#import "NViewController.h"

@interface NViewController ()

@end

@implementation NViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    
    [self write];
    
    [self read];

}

- (void)read {
    // 用来保存错误信息
    NSError *error = nil;

    // 读取文件内容
    NSString *str = [NSString stringWithContentsOfFile:@"/Users/wangzelong/Desktop/Lion.txt" encoding:NSUTF8StringEncoding error:&error];

    // 如果有错误信息
    if (error) {
        NSLog(@"读取失败, 错误原因是:%@", [error localizedDescription]);
    } else { // 如果没有错误信息
        NSLog(@"读取成功, 文件内容是:\n%@", str);
    }
}

- (void)write {
    // writeToFile 写入
    NSString *str = @"Lion";
    BOOL flag = [str writeToFile:@"/Users/wangzelong/Desktop/Lion.txt" atomically:YES encoding:NSUTF8StringEncoding error:nil];

    if (flag == 1) {
        NSLog(@"写入成功");
    }
}

@end
