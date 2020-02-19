//
//  LViewController.m
//  NSSting-Demo
//
//  Created by wangzelong on 2020/2/14.
//  Copyright © 2020 wangzelong. All rights reserved.
//

#import "LViewController.h"

@interface LViewController ()

@end

@implementation LViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    
    NSString *string = @"A_B_c_D_E_F";

    //分割(指定字符串)
    NSArray *resultArr1 = [string componentsSeparatedByString:@"_"];
    NSLog(@"%@", resultArr1);
    //输出:   (A, B, c, D, E, F)

    //分割(指定字符集合)
    NSArray *resultArr2 = [string componentsSeparatedByCharactersInSet:[NSCharacterSet lowercaseLetterCharacterSet]];
    NSLog(@"%@", resultArr2);
    //输出:   ("A_B_" , "_D_E_F")
}

/*
NSCharacterSet    说明
controlCharacterSet    控制符
whitespaceCharacterSet    空格符
whitespaceAndNewlineCharacterSet    空格换行符
decimalDigitCharacterSet    小数
letterCharacterSet    文字
lowercaseLetterCharacterSet    小写字母
uppercaseLetterCharacterSet    大写字母
nonBaseCharacterSet    非基础
alphanumericCharacterSet    数字字母
decomposableCharacterSet    可分解
illegalCharacterSet    非法
punctuationCharacterSet    标点
capitalizedLetterCharacterSet    大写
symbolCharacterSet    符号
newlineCharacterSet    换行符
*/

@end
