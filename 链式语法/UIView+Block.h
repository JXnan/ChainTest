//
//  UIView+Block.h
//  TouchTest
//
//  Created by 王家薪 on 2017/6/14.
//  Copyright © 2017年 xingchouwang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WJXBlockManage.h"

@interface UIView (Block)


- (void)updataFrame:(void(^)(WJXBlockManage * manage))make;


@end
