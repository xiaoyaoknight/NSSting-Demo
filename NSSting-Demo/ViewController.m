//
//  ViewController.m
//  NSSting-Demo
//
//  Created by wangzelong on 2020/2/14.
//  Copyright © 2020 wangzelong. All rights reserved.
//

#import "ViewController.h"
#import "AViewController.h"
#import "BViewController.h"
#import "CViewController.h"
#import "DViewController.h"
#import "EViewController.h"
#import "FViewController.h"
#import "GViewController.h"
#import "HViewController.h"
#import "IViewController.h"
#import "JViewController.h"
#import "KViewController.h"
#import "LViewController.h"
#import "MViewController.h"
#import "NViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

/**
 *  字符串创建
 */
- (IBAction)create:(id)sender {
    
    AViewController *vc = [[AViewController alloc] init];
    vc.title = @"字符串创建";
    [self.navigationController pushViewController:vc animated:YES];
}

/**
 *  属性
 */
- (IBAction)pro:(id)sender {
    
    BViewController *vc = [[BViewController alloc] init];
    vc.title = @"字符串属性";
    [self.navigationController pushViewController:vc animated:YES];
}

/**
 *  字符串获取
 */
- (IBAction)get:(id)sender {
    CViewController *vc = [[CViewController alloc] init];
    vc.title = @"字符串获取";
    [self.navigationController pushViewController:vc animated:YES];
}

/**
 *  字符串比较
 */
- (IBAction)compare:(id)sender {
    DViewController *vc = [[DViewController alloc] init];
    vc.title = @"字符串比较";
    [self.navigationController pushViewController:vc animated:YES];
}

/**
 *  字符串搜索
 */
- (IBAction)search:(id)sender {
    EViewController *vc = [[EViewController alloc] init];
    vc.title = @"字符串搜索";
    [self.navigationController pushViewController:vc animated:YES];
}

/**
 *  字符串拼接
 */
- (IBAction)pading:(id)sender {
    FViewController *vc = [[FViewController alloc] init];
    vc.title = @"字符串拼接";
    [self.navigationController pushViewController:vc animated:YES];
}

/**
 *  字符串转基本数据
 */
- (IBAction)trans:(id)sender {
    GViewController *vc = [[GViewController alloc] init];
    vc.title = @"字符串转基本数据";
    [self.navigationController pushViewController:vc animated:YES];
}

/**
 *  字符串大小转换
 */
- (IBAction)big:(id)sender {
    HViewController *vc = [[HViewController alloc] init];
    vc.title = @"字符串大小转换";
    [self.navigationController pushViewController:vc animated:YES];
}

/**
 *  字符串分段
 */
- (IBAction)part:(id)sender {
    IViewController *vc = [[IViewController alloc] init];
    vc.title = @"字符串分段";
    [self.navigationController pushViewController:vc animated:YES];
}

/**
 *  字符串列举
 */
- (IBAction)lieju:(id)sender {
    JViewController *vc = [[JViewController alloc] init];
    vc.title = @"字符串列举";
    [self.navigationController pushViewController:vc animated:YES];
}

/**
 *  字符串编码与转换
 */
- (IBAction)encode:(id)sender {
    KViewController *vc = [[KViewController alloc] init];
    vc.title = @"字符串编码与转换";
    [self.navigationController pushViewController:vc animated:YES];
}

/**
 *  字符串分割
 */
- (IBAction)fenge:(id)sender {
    LViewController *vc = [[LViewController alloc] init];
    vc.title = @"字符串分割";
    [self.navigationController pushViewController:vc animated:YES];
}

/**
 *  字符串操作
 */
- (IBAction)caozuo:(id)sender {
    MViewController *vc = [[MViewController alloc] init];
    vc.title = @"字符串操作";
    [self.navigationController pushViewController:vc animated:YES];
}

/**
 *  字符串写入
 */
- (IBAction)write:(id)sender {
    NViewController *vc = [[NViewController alloc] init];
    vc.title = @"字符串写入";
    [self.navigationController pushViewController:vc animated:YES];
}

@end
