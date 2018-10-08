//
//  KTCBaseTestCase.m
//  单元测试Demo1Tests
//
//  Created by huhu on 2018/10/8.
//  Copyright © 2018年 huhu. All rights reserved.
//

#import "KTCBaseTestCase.h"
#import "Person.h"
#import "Dog.h"
#import <OCMock.h>
#import "ViewController.h"
#import "OCMockViewController.h"
@implementation KTCBaseTestCase

- (void)testPerson{
    Person *p = [[Person alloc]init];
    
    Person *mock_p = OCMClassMock([Person class]);
    
    OCMStub([mock_p getPersonName]).andReturn(@"OCMock");

    NSLog(@"%@",[mock_p getPersonName]);
    
    NSLog(@"%@",[p getPersonName]);
    //断言
    XCTAssertEqualObjects([mock_p getPersonName], [p getPersonName],@"不相等");
}


- (void)testInsertTableViewCell{
    ViewController *vc = [[ViewController alloc]init];
    NSIndexPath *indexPath = [NSIndexPath indexPathForRow:0 inSection:0];
//    UITableView *tableView = [[UITableView alloc] init];
    // 虚拟的tablevIEW
    id tableView_ocMock = OCMClassMock([UITableView class]);
    [vc tableView:tableView_ocMock commitEditingStyle:UITableViewCellEditingStyleInsert forRowAtIndexPath:indexPath];
//    [tableView_ocMock deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationNone];
    [tableView_ocMock insertRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationNone];
}


- (void)testMockDemo{
     // VC ---> 更新UI (VIEW) -->  数据(model) ---> manger
    OCMockViewController *vc = [[OCMockViewController alloc]init];
    
    id manager = OCMClassMock([Manager class]);
    
    Dog *dog1= [[Dog alloc]init];
    dog1.userName = @"123";
    Dog *dog2= [[Dog alloc]init];
    dog2.userName = @"456";
    
    NSArray *array = @[dog1,dog2];
    OCMStub([manager fetchDogs]).andReturn(array);
    vc.manager = manager;//??? 问题
    
    id cardView = OCMClassMock([IDCardView class]);
    vc.idCardView = cardView;
    
    OCMVerify([vc updateIDCardView2]);
    
}



@end
