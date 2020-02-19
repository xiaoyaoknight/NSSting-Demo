//
//  GViewController.m
//  NSSting-Demo
//
//  Created by wangzelong on 2020/2/14.
//  Copyright © 2020 wangzelong. All rights reserved.
//

#import "GViewController.h"

@interface GViewController ()

@end

@implementation GViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
}

/*
字符串转化为基本数据
@property (readonly) double doubleValue;
@property (readonly) float floatValue;
@property (readonly) int intValue;
@property (readonly) NSInteger integerValue NS_AVAILABLE(10_5, 2_0);
@property (readonly) long long longLongValue NS_AVAILABLE(10_5, 2_0);
@property (readonly) BOOL boolValue NS_AVAILABLE(10_5, 2_0);
**注意：这里需要提示一下，如果字符串内全是数字，则会全部转化（如果有小数点，转为float和double类型会全转，其他形式只取整数，），如果全是非数字，或者没有以数字开头，怎转化值为0，比如：@"dgtgwge566" //0   如果开头以数字开头，开始会提取到开头几个数字的，后面的提取不了，如：@"456dkhgeo90" //456**
*/

@end
