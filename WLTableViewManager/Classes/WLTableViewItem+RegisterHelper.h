//
//  WLTableViewItem+RegisterHelper.h
//  WLTableViewManager
//
//  Created by Fallrainy on 2018/8/26.
//

#import "WLTableViewItem.h"

@interface WLTableViewItem (RegisterHelper)

///如果还没注册cell,那么注册它
- (void)registerCellIfNeeded;

@end
