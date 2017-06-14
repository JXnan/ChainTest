//
//  WJXBlockManage.h
//  TouchTest
//
//  Created by 王家薪 on 2017/6/14.
//  Copyright © 2017年 xingchouwang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface WJXBlockManage : NSObject

/** frame */
@property (nonatomic, assign) CGRect frame;

- (WJXBlockManage *(^)(CGFloat value))x;
- (WJXBlockManage *(^)(CGFloat value))y;
- (WJXBlockManage *(^)(CGFloat value))width;
- (WJXBlockManage *(^)(CGFloat value))height;

@end
