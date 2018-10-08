//
//  OCMockViewController.h
//  单元测试Demo1
//
//  Created by youzu on 2018/10/8.
//  Copyright © 2018年 youzu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Manager.h"
#import "IDCardView.h"
NS_ASSUME_NONNULL_BEGIN

@interface OCMockViewController : UIViewController
@property(nonatomic, strong) Manager *manager;
@property(nonatomic, strong) IDCardView *idCardView;

- (void)updateIDCardView;

- (void)updateIDCardView2;

@end

NS_ASSUME_NONNULL_END
