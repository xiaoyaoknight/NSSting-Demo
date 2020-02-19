//
//  QViewController.m
//  NSSting-Demo
//
//  Created by wangzelong on 2020/2/19.
//  Copyright © 2020 wangzelong. All rights reserved.
//

#import "QViewController.h"

@interface QViewController ()

@end

@implementation QViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];

}

/*
NSRange是Foundation框架中比较常用的结构体, 它的定义如下:
typedef struct _NSRange {
    NSUInteger location;
    NSUInteger length;
} NSRange;


// NSUInteger的定义
typedef unsigned int NSUInteger;
NSRange用来表示事物的一个范围,通常是字符串里的字符范围或者数组里的元素范围

// NSRange有2个成员
NSUInteger location : 表示该范围的起始位置
NSUInteger length : 表示该范围内的长度
比如@“I Miss You Lion”中的@“Lion”可以用location为11，length为4的范围来表示
*/

@end
