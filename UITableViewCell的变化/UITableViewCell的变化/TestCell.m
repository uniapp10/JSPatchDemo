//
//  TestCell.m
//  UITableViewCell的变化
//
//  Created by zhudong on 2016/10/10.
//  Copyright © 2016年 zhudong. All rights reserved.
//

#import "TestCell.h"
#import <Masonry.h>

@implementation TestCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self setupUI];
    }
    return self;
}

- (void)setupUI{
    UILabel *label = [[UILabel alloc] init];
    label.backgroundColor = [UIColor redColor];
    [self.contentView addSubview:label];
    label.text = @"testCopyright © 2016年 zhudong. All rights reserved.Copyright © 2016年 zhudong. All rights reserved.Copyright © 2016年 zhudong. All rights reserved.";
    label.numberOfLines = 0;
    [label mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.left.equalTo(self.contentView).offset(10);
        make.right.equalTo(self.contentView).offset(-10);
        make.bottom.equalTo(self.contentView).offset(-10);
    }];
}
@end
