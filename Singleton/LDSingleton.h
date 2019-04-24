//
//  LDSingleton.h
//  Singleton
//
//  Created by lidi on 2019/4/17.
//  Copyright © 2019 Li. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LDSingleton : NSObject
@property(nonatomic,strong)NSString *name;
+ (instancetype)shareSingleton;
- (instancetype)init NS_UNAVAILABLE;
+ (instancetype)new NS_UNAVAILABLE;
- (id)copy NS_UNAVAILABLE;
- (id)mutableCopy NS_UNAVAILABLE;

@end

NS_ASSUME_NONNULL_END
