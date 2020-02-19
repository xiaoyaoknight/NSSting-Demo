//
//  DViewController.m
//  NSSting-Demo
//
//  Created by wangzelong on 2020/2/14.
//  Copyright © 2020 wangzelong. All rights reserved.
//

#import "DViewController.h"

@interface DViewController ()

@end

@implementation DViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    
    [self isEqualToString:nil];
    
    [self compare:nil];
}

// 两个字符串的内容相同就返回YES, 否则返回NO
- (BOOL)isEqualToString:(NSString *)aString {
    NSString *str1 = @"lion";
    NSString *str2 = [NSString stringWithFormat:@"lion"];
    if ([str1 isEqualToString:str2]) {
        NSLog(@"字符串内容一样");
    }
    
    if (str1 == str2) {
        NSLog(@"字符串地址一样");
    }
    return YES;
}
   
  
/**
 这个方法可以用来比较两个字符串内容的大小
 比较方法: 逐个字符地进行比较ASCII值，返回NSComparisonResult作为比较结果
 NSComparisonResult是一个枚举，有3个值:
 如果左侧 > 右侧,返回NSOrderedDescending,
 如果左侧 < 右侧,返回NSOrderedAscending,
 如果左侧 == 右侧返回NSOrderedSame
 */
- (NSComparisonResult)compare:(NSString *)string {
    NSString *str1 = @"abc";
       NSString *str2 = @"abd";
       switch ([str1 compare:str2]) {
           case NSOrderedAscending:
               NSLog(@"后面一个字符串大于前面一个");
               return NSOrderedAscending;
               break;
           case NSOrderedDescending:
               NSLog(@"后面一个字符串小于前面一个");
               return NSOrderedDescending;
               break;
           case NSOrderedSame:
               NSLog(@"两个字符串一样");
               return NSOrderedSame;
               break;
       }
      //输出结果: 后面一个字符串大于前面一个
}


// 忽略大小写进行比较，返回值与compare:一致
//- (NSComparisonResult)caseInsensitiveCompare:(NSString *)string;

@end
