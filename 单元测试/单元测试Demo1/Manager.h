//
//  Manager.h
//  单元测试Demo1
//
//  Created by youzu on 2018/10/8.
//  Copyright © 2018年 youzu. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Manager : NSObject

- (NSArray *)fetchDogs;

+ (NSArray *)fetchDogs2;


- (void)fetchDogsWithBlock:(void (^)(NSDictionary *result, NSError *error))block;

@end

NS_ASSUME_NONNULL_END
