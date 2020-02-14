//
//  AViewController.m
//  NSSting-Demo
//
//  Created by wangzelong on 2020/2/14.
//  Copyright © 2020 wangzelong. All rights reserved.
//

#import "AViewController.h"

@interface AViewController ()

@end

@implementation AViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self create];
}

- (void)create {
    //常量区中的字符串只要内容一致, 不会重复创建
    NSString *str1 = @"abc";
    NSString *str11 = @"abc";
    NSLog(@"str1:%@   str11:%@",str1,str11);
    NSLog(@"\n %p \n %p",&str1,&str11);  //输出地址不一样

    
    
    //通过alloc init创建，存储在堆区，若其它对象存储的内容一样，不会指针指向同一个地址，会直接alloc init分配存储空间（str2对象则存储在栈区）。
    //注意：但是不同平台存储方式不一样，mac中的地址会相同，因为对字符串对象进行过优化，二iOS平台则地址不同。
    //不同编译器存储方式也不一样，iOS6.0以前会通过alloc重新创建地址，而iOS6.0后alloc会指向同一个地址
    NSString *str2 = [[NSString alloc] initWithFormat:@"def"];
    NSString *str22 = [[NSString alloc] initWithFormat:@"def"];
    NSLog(@"str2:%@   str22:%@",str2,str22);
    NSLog(@"\n %p \n %p",&str2,&str22);
    
    
    //通过类工厂方法创建。存储在堆区,存储方式等同于alloc init（因为类工厂方法就在类中封装了alloc init）
    NSString *str3 = [NSString stringWithFormat:@"hig"];
    NSString *str33 = [NSString stringWithFormat:@"hig"];
    NSLog(@"str3:%@   str33:%@",str3,str33);

    /*通过alloc和类工厂方法都会在堆区分配内存，但是initWithString不会分配内存，因为：
    initWithString是通过copy返回一个字符串，二这个copy是浅拷贝，所以无论什么平台，都会指向同一块地址。
    */
    //下面会发生警告uising ”initWithString“ with a literal is redundant（用文字是多余的），相当于常量的创建方式。
    NSString *str4 = [[NSString alloc] initWithString:@"klm"];
    NSLog(@"str4:%@", str4);
}

@end
