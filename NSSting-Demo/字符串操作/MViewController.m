//
//  MViewController.m
//  NSSting-Demo
//
//  Created by wangzelong on 2020/2/14.
//  Copyright © 2020 wangzelong. All rights reserved.
//

#import "MViewController.h"

@interface MViewController ()

@end

@implementation MViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    
    NSString *string = @"3EWRs a;af";

                                                  //////////修剪//////////
    NSString *result1 = [string stringByTrimmingCharactersInSet:[NSCharacterSet lowercaseLetterCharacterSet]];
    NSLog(@"%@", result1);
    //输出:   3EWRs a;
                                                //////////填充//////////
    NSString *result2 = [string stringByPaddingToLength:20 withString:@"填充" startingAtIndex:1];
    NSLog(@"%@", result2);
    //输出:   3EWRs a;af充填充填充填充填充填

                                                //////////折叠//////////
    NSString *result3 = [string stringByFoldingWithOptions:NSNumericSearch locale:[NSLocale systemLocale]];
    NSLog(@"%@", result3);
    //输出:   3EWRs a;af

                                                //////////替换//////////
    //替换(指定字符串)
    NSString *result4 = [string stringByReplacingOccurrencesOfString:@" " withString:@"替换"];
    NSLog(@"%@", result4);
    //输出:   3EWRs替换a;af

    //替换(指定字符串,条件,范围)
    NSString *result5 = [string stringByReplacingOccurrencesOfString:@"a" withString:@"替换" options:NSRegularExpressionSearch range:NSMakeRange(0, string.length - 2)];
    NSLog(@"%@", result5);
    //输出:   3EWRs 替换;af

    //替换(指定范围)
    NSString *result6 = [string stringByReplacingCharactersInRange:NSMakeRange(0, string.length) withString:@"替换"];
    NSLog(@"%@", result6);
    //输出:   替换

}

@end
