//
//  CViewController.m
//  NSSting-Demo
//
//  Created by wangzelong on 2020/2/14.
//  Copyright © 2020 wangzelong. All rights reserved.
//

#import "CViewController.h"

@interface CViewController ()

@end

@implementation CViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self subFrom];
    
    
    [self subTo];
    
    [self subWithRange];
    
    [self getCharacters];
}

/**
 *  ######方式1:
 *  - (NSString *)substringFromIndex:(NSUInteger)from;
 *  从指定位置from开始(包括指定位置的字符)到尾部
 *  截取指定位置之后的字符串
 */
- (void)subFrom {
    //字符从0开始算
    NSString *str = @"<head>会跳舞的狮子</head>";
    str = [str substringFromIndex:6];
    NSLog(@"str = %@", str);
    //打印结果 str = 会跳舞的狮子</head>
    
}

/**
 *  ######方式2:
 *  - (NSString *)substringToIndex:(NSUInteger)to;
 *  从字符串的开头一直截取到指定的位置to，但不包括该位置的字符
 *  //从0下标开始截取到指定位置的字符串
 */
- (void)subTo {
    NSString *str = @"<head>会跳舞的狮子</head>";
    str = [str substringToIndex:12];
    NSLog(@"str = %@", str);
    //打印结果 str = <head>会跳舞的狮子
}

/**
 *  ######方式3:
 *  - (NSString *)substringWithRange:(NSRange)range;
 *  按照所给出的NSRange从字符串中截取子串
 */
- (void)subWithRange {
    NSString *str = @"<head>会跳舞的狮子</head>";
    NSRange range;
    /*
     range.location = 6;
     range.length = 6;
     */
    range.location = [str rangeOfString:@">"].location + 1;
    range.length = [str rangeOfString:@"</"].location - range.location;
    NSString *result = [str substringWithRange:range];
    NSLog(@"result = %@", result);
    //打印结果   会跳舞的狮子
}

/**
 *   //截取字符串指定范围的字符
 *   - (void)getCharacters:(unichar *)buffer range:(NSRange)range;
 */
- (void)getCharacters {
    
    NSString *str = @"<head>会跳舞的狮子</head>";
//    NSRange range;
//    range.location = 6;
//    range.length = 6;
//    NSString *result = [str getCharacters:str range:range];
    
    unichar buffer[4];
    [str getCharacters:buffer range:NSMakeRange(0,4)];
    int size;
    memcpy(&size,&buffer,4);
    NSLog(@"size =%d", size);

}


@end
