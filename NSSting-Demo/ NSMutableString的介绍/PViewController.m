//
//  PViewController.m
//  NSSting-Demo
//
//  Created by wangzelong on 2020/2/19.
//  Copyright © 2020 wangzelong. All rights reserved.
//

#import "PViewController.h"

@interface PViewController ()

@end

@implementation PViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];

                                                    //////////字符串分配容量//////////
    //1.初始化容量为Capacity大小的字符串  (需要手动释放内存)
    NSMutableString *mutableStr1 = [[NSMutableString alloc] initWithCapacity:20];

    //2.初始化容量为Capacity大小的字符串  (不需要手动释放内存)
    NSMutableString *mutableStr2 = [NSMutableString stringWithCapacity:20];

    // 扩展方法
    NSMutableString *str = [NSMutableString stringWithString:@"string"];

                                                      //////////插入//////////
    [str insertString:@"123" atIndex:2];
    NSLog(@"%@", str);
    //输出:   st123ring

                                                      //////////删除//////////
    [str deleteCharactersInRange:NSMakeRange(2, 2)];
    NSLog(@"%@", str);
    //输出:   st3ring

                                                    //////////拼接//////////
    [str appendString:@"456"];
    NSLog(@"%@", str);
    //输出:   st3ring456

                                                   //////////格式化拼接//////////
    [str appendFormat:@"7 89"];
    NSLog(@"%@", str);
    //输出:   st3ring4567 89

                                                //////////设置新字符串//////////
    [str setString:@"string"];
    NSLog(@"%@", str);
    //输出:   string

                                                //////////字符串替换//////////
    //1.指定范围替换
    [str replaceCharactersInRange:NSMakeRange(2, 2) withString:@"123"];
    NSLog(@"%@", str);
    //输出:   st123ng

    //2.指定字符串,条件,范围替换
    [str replaceOccurrencesOfString:@"123" withString:@"--" options:NSRegularExpressionSearch range:NSMakeRange(0, str.length)];
    NSLog(@"%@", str);
    //输出:   st--ng
    
}


@end
