//
//  ViewController.m
//  Singleton
//
//  Created by lidi on 2019/4/17.
//  Copyright © 2019 Li. All rights reserved.
//

#import "ViewController.h"
#import "LDSingleton.h"
#import "Man.h"
#import "Woman.h"
#import "Person.h"
#import <QuartzCore/QuartzCore.h>
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // 一个真正的单例类
    LDSingleton *singleton = [LDSingleton shareSingleton];
    singleton.name = @"hank";
    NSLog(@"%p",singleton);
//    [[LDSingleton alloc]init]; // 报错
    // 继承自LDSingleton的子类，没有重写shareSingleton方法，得到的还是父类单例对象
    Man *man = [Man shareSingleton];
    NSLog(@"%p, %@",man,man.name);
    
    /* 重写了shareSingleton方法的子类，拥有自己的单例对象
    *  父单例类的属性也可以继承，所以单例可以继承
     */
    Woman *woman = [Woman shareSingleton];
    NSLog(@"%p, %@",woman,woman.name);
    
    // 通过分类和协议实现的单例，Person类只要遵守协议就可以拥有自己的单例
    Person *person1 = [Person LD_sharedSingleton];
    NSLog(@"%p",person1);
    Person *person2 = [Person LD_sharedSingleton];
    NSLog(@"%p",person2);

    NSTimeInterval begin = CACurrentMediaTime();
    for (int i=0; i<10000; i++) {
        [Person LD_sharedSingleton];
        [Person LD_freeSharedSingleton];
    }
    NSTimeInterval end = CACurrentMediaTime();
    NSLog(@"TimeInterval: %.2f ms",(end-begin)*1000);
}


@end
