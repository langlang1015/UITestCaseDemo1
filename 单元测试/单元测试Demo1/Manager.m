//
//  Manager.m
//  单元测试Demo1
//
//  Created by youzu on 2018/10/8.
//  Copyright © 2018年 youzu. All rights reserved.
//

#import "Manager.h"

@implementation Manager
- (NSArray *)fetchDogs{
    
    return @[];
}

+ (NSArray *)fetchDogs2{
    
    return @[];
}

- (void)fetchDogsWithBlock:(void (^)(NSDictionary *result, NSError *error))block{
    
    block(@{@"hh":@"hh"},nil);
}
@end
