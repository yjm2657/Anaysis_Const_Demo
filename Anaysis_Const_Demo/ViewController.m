//
//  ViewController.m
//  Anaysis_Const_Demo
//
//  Created by YJM on 2017/9/11.
//  Copyright © 2017年 YJM. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    const int a;
    int const b;
    //两个意义都是一样的 ： 常整形a,b  即 a,b是不可修改 只读的

    const int *c;
    // const后面是int 强调的是int整形 ： 指向常整形的指针c， 即 整形是不可修改的 而 指针是个可以修改的
    
    int *const d;
    // const 后面是指针d 强调的是 指针d ： 指向整形的常指针， 即 整形是可以修改的 而 指针是不可以修改的
    
    int const* const e;
    //const 附近既有整形 也有指针 ： 指向常整形的常指针。 即 整形与指针 都不可以修改
    
    // #define 与 const 的区别？？？？？
    // #define在预处理阶段进行简单的替换，而 const 是在编译阶段使用的
    // #define 不做类型检查，仅仅展开替换。而 const 有数据类型，会执行类型检查
    // #define 不分配内存，仅仅展开替换。而 const 会很分配内存
    // #define 不能调试， 而 const 不可以
    // #define 定义的常量在替换后运行过程中会不断的占用内存, 而 const 定义的常量存储在数据段, 只有一分copy, 所以效率更高
        //(要具体看#define是什么类型, 如果写的是'@""'这种字符串,这种内存是有一份,苹果做了优化的.而如果你自定义类型的话就会占用多分内存,因为本质是替换,代码是多分的,自动就会有多分内存占用)
    // #define 可以定义一些简单的函数, 而const 不可以
    
    
    //用define 定义一年有多少秒
#define YEAR_SECOND (60 * 60 * 24 * 356)_U_LONG
    //会遇到整形溢出,所有要改成 无符号的长整形 _U_LONG
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
