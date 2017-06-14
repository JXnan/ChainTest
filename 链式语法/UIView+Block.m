//
//  UIView+Block.m
//  TouchTest
//
//  Created by 王家薪 on 2017/6/14.
//  Copyright © 2017年 xingchouwang. All rights reserved.
//

#import "UIView+Block.h"

@implementation UIView (Block)

- (void)updataFrame:(void (^)(WJXBlockManage *))make{
    
    
    
    WJXBlockManage * manage = [[WJXBlockManage alloc] init];
    manage.frame = self.frame;
    make(manage);
    
    self.frame = manage.frame;
}

@end
