//
//  JViewController.m
//  NSSting-Demo
//
//  Created by wangzelong on 2020/2/14.
//  Copyright © 2020 wangzelong. All rights reserved.
//

#import "JViewController.h"

@interface JViewController ()

@end

@implementation JViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    NSString *string = @"123456\nABCDEF\nabcdef";
    //1.列举(按行)
    [string enumerateLinesUsingBlock:^(NSString * _Nonnull line, BOOL * _Nonnull stop) {
        NSLog(@"每行:   %@", line);
    }];
    //输出:    每行:   123456
    //输出:    每行:   ABCDEF
    //输出:    每行:   abcdef
    
    //2.列举(范围,条件)
    [string enumerateSubstringsInRange:NSMakeRange(5, 10) options:NSStringEnumerationByLines usingBlock:^(NSString * _Nullable substring, NSRange substringRange, NSRange enclosingRange, BOOL * _Nonnull stop) {
        
        NSLog(@"%@", substring);
        NSLog(@"%ld   %ld", substringRange.location, substringRange.length);
        NSLog(@"%ld   %ld", enclosingRange.location, enclosingRange.length);
    }];
}

/*
| NSStringEnumerationOptions | 说明 |
| --- | --- |
| NSStringEnumerationByLines | 按行 |
| NSStringEnumerationByParagraphs | 按段落 |
| NSStringEnumerationByComposedCharacterSequences | 按字符顺序 |
| NSStringEnumerationByWords | 按单词,字 |
| NSStringEnumerationBySentences | 按句子 |
| NSStringEnumerationReverse | 反向遍历 |
| NSStringEnumerationSubstringNotRequired | 不需要子字符串 |
| NSStringEnumerationLocalized | 本地化 |
*/

@end
