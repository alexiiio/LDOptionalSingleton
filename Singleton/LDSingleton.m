//
//  LDSingleton.m
//  Singleton
//
//  Created by lidi on 2019/4/17.
//  Copyright © 2019 Li. All rights reserved.
//

#import "LDSingleton.h"
@implementation LDSingleton

static LDSingleton *instance;
+ (instancetype)shareSingleton {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc]init];
    });
    return instance;
}

@end
