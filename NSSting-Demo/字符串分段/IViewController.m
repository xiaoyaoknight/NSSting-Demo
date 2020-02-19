//
//  IViewController.m
//  NSSting-Demo
//
//  Created by wangzelong on 2020/2/14.
//  Copyright © 2020 wangzelong. All rights reserved.
//

#import "IViewController.h"

@interface IViewController ()

@end

@implementation IViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    
    NSString *str = @"sahdhtfgwqioqd;askl;qkpwoke'a2312395";
    
//    [str getLineStart:0 end: contentsEnd:3 forRange:NSMakeRange(4, 7)];
    
    
     //获取该行的范围(指定范围)
     NSRange range1 = [str lineRangeForRange:NSMakeRange(0, 10)];
     NSLog(@"%ld 行长度:  %ld", range1.location, range1.length);

    
//     [str getParagraphStart:0 end:2 contentsEnd:3 forRange:NSMakeRange(4, 8)];
    
    
     //获取该段落范围(指定范围)
     NSRange range2 = [str paragraphRangeForRange:NSMakeRange(0, 3)];
     NSLog(@"%ld 段落长度:   %ld", range2.location, range2.length);
}

/*
 //1.指定范围,分行取字符串
 - (void)getLineStart:(nullable NSUInteger *)startPtr end:(nullable NSUInteger *)lineEndPtr contentsEnd:(nullable NSUInteger *)contentsEndPtr forRange:(NSRange)range;

 //2.获取指定范围该行的范围
 - (NSRange)lineRangeForRange:(NSRange)range;

                                                  //////////分段//////////
 //3.指定范围,分段取字符串
 - (void)getParagraphStart:(nullable NSUInteger *)startPtr end:(nullable NSUInteger *)parEndPtr contentsEnd:(nullable NSUInteger *)contentsEndPtr forRange:(NSRange)range;

 //4.获取指定范围该段落的范围
 - (NSRange)paragraphRangeForRange:(NSRange)range;
 
 */

@end
