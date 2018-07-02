//
//  WLViewController.m
//  WLTableViewManager
//
//  Created by nomeqc@gmail.com on 04/09/2018.
//  Copyright (c) 2018 nomeqc@gmail.com. All rights reserved.
//

#import "WLViewController.h"
#import "WLTableViewManager.h"
#import "TableViewCell.h"

@interface WLViewController ()
<WLTableViewManagerDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (nonatomic) WLTableViewManager *manager;

@end

static NSString *const kCellId = @"cell";


@implementation WLViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.manager = [[WLTableViewManager alloc] initWithTableView:self.tableView delegate:self];
    [self registerCell];
    
    //测试左滑按钮
    [self.manager addSection:({
        WLTableViewSection *section = [[WLTableViewSection alloc] init];
        [section addItem:({
            TableViewCellItem *item = [[TableViewCellItem alloc] init];
            item.rowActions = ({
                UITableViewRowAction *deleteAction = [UITableViewRowAction rowActionWithStyle:UITableViewRowActionStyleDestructive title:@"删除" handler:^(UITableViewRowAction * _Nonnull action, NSIndexPath * _Nonnull indexPath) {
                    NSLog(@"删除");
                }];
                UITableViewRowAction *editingAction = [UITableViewRowAction rowActionWithStyle:UITableViewRowActionStyleNormal title:@"编辑" handler:^(UITableViewRowAction * _Nonnull action, NSIndexPath * _Nonnull indexPath) {
                    NSLog(@"编辑");
                }];
                @[deleteAction,editingAction];
            });
            item.editingStyle = UITableViewCellEditingStyleDelete;
            item;
        })];
        [section addItem:({
            TableViewCellItem *item = [[TableViewCellItem alloc] init];
            item.rowActions = ({
                UITableViewRowAction *deleteAction = [UITableViewRowAction rowActionWithStyle:UITableViewRowActionStyleDestructive title:@"删除" handler:^(UITableViewRowAction * _Nonnull action, NSIndexPath * _Nonnull indexPath) {
                    NSLog(@"删除");
                }];
                UITableViewRowAction *editingAction = [UITableViewRowAction rowActionWithStyle:UITableViewRowActionStyleNormal title:@"编辑" handler:^(UITableViewRowAction * _Nonnull action, NSIndexPath * _Nonnull indexPath) {
                    NSLog(@"编辑");
                }];
                @[deleteAction,editingAction];
            });
            item.editingStyle = UITableViewCellEditingStyleDelete;
            item;
        })];
        section;
    })];
}

- (void)registerCell {
    self.manager[NSStringFromClass([TableViewCellItem class])] = NSStringFromClass([TableViewCell class]);
}



@end
