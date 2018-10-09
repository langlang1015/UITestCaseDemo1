//
//  OCMockViewController.m
//  单元测试Demo1
//
//  Created by youzu on 2018/10/8.
//  Copyright © 2018年 youzu. All rights reserved.
//

#import "OCMockViewController.h"

@interface OCMockViewController ()

@end

@implementation OCMockViewController

- (void)updateIDCardView{
    
    NSArray *dogs = [self.manager fetchDogs];
    if (dogs != nil) {
        for (Dog *dog in dogs){
            [self.idCardView addDog:dog];
        }
    }
}

- (void)updateIDCardView2{
    
    NSArray *dogs = [Manager fetchDogs2];
    if (dogs != nil) {
        for (Dog *dog in dogs){
            [self.idCardView addDog:dog];
        }
    }
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
