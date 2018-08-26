//
//  WLTableViewItem+RegisterHelper.m
//  WLTableViewManager
//
//  Created by Fallrainy on 2018/8/26.
//

#import "WLTableViewItem+RegisterHelper.h"
#import "WLTableViewSection.h"
#import "WLTableViewManager.h"

@implementation WLTableViewItem (RegisterHelper)

- (void)registerCellIfNeeded {
    WLTableViewManager *tableViewManager = self.section.tableViewManager;
    if (!tableViewManager) {
        return;
    }
    NSDictionary *regiserClasses = [tableViewManager registeredClasses];
    if ([regiserClasses objectForKey:[self class]]) {
        return;
    }
    if ([[self class] conformsToProtocol:@protocol(WLTableViewCellRegisterProtocol)] && [[self class] respondsToSelector:@selector(cellClassForRegister)]) {
        Class cls = [[self class] cellClassForRegister];
        if (!cls) {
            return;
        }
        [tableViewManager registerClass:NSStringFromClass([self class]) forCellWithReuseIdentifier:NSStringFromClass(cls)];
    }
}

@end
