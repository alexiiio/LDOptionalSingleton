//
//  Woman.m
//  Singleton
//
//  Created by lidi on 2019/4/17.
//  Copyright © 2019 Li. All rights reserved.
//

#import "Woman.h"

@implementation Woman
static Woman *woman;
+ (instancetype)shareSingleton {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        woman = [[self alloc]init];
    });
    return woman;
}
@end
