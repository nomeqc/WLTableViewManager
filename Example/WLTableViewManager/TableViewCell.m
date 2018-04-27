//
//  TableViewCell.m
//  WLTableViewManager_Example
//
//  Created by Fallrainy on 2018/4/27.
//  Copyright © 2018年 nomeqc@gmail.com. All rights reserved.
//

#import "TableViewCell.h"


@implementation TableViewCellItem

- (instancetype)init {
    self = [super init];
    if (!self) {
        return nil;
    }
    
    [self setCellHeight:44.0];
    
    return self;
}

@end

@interface TableViewCell ()

@end

@implementation TableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (!self) {
        return nil;
    }
    self.backgroundColor = [UIColor cyanColor];
    return self;
}


- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
