//
//  ViewController.m
//  UITableViewCell的变化
//
//  Created by zhudong on 2016/10/10.
//  Copyright © 2016年 zhudong. All rights reserved.
//

#import "ViewController.h"
#import "TestCell.h"
#import "ViewController+CategoryTest.h"

@interface ViewController ()
@property (nonatomic,assign) NSInteger count;
@property (nonatomic,strong) NSString *name;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.tableView registerClass:[TestCell class] forCellReuseIdentifier:@"TestCell"];
    self.tableView.estimatedRowHeight = 100;
    self.tableView.rowHeight = UITableViewAutomaticDimension;
    [ViewController testLogOne];
    [ViewController testLogTwo];
    
    NSLog(@"*******count%zd**********", _count);
    
    [self blockTest:^(NSString *str) {
        NSLog(@"*******%@******",str);
    }];
}

- (void)blockTest: (void (^)(NSString *))block{
    block(@"blockTest");
}
+ (void)testLogOne{
    NSLog(@"*******classTestLogOne*******");
}

+ (void)testLogTwo{
    NSLog(@"*******classTestLogTwo*******");
}

- (void)testLog{
    NSLog(@"*******testLog*******");
    [self categoryTest];
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    TestCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"TestCell"];
    if (!cell) {
        cell = [[TestCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"TestCell"];
    }
    return cell;
}
@end
