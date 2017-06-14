//
//  WJXBlockManage.m
//  TouchTest
//
//  Created by 王家薪 on 2017/6/14.
//  Copyright © 2017年 xingchouwang. All rights reserved.
//

#import "WJXBlockManage.h"

@interface WJXBlockManage ()



@end

typedef WJXBlockManage *(^WJXBlock)(CGFloat value);

@implementation WJXBlockManage

- (WJXBlockManage *(^)(CGFloat))x{

    WJXBlockManage *(^block)(CGFloat) = ^WJXBlockManage *(CGFloat value) {
        
        CGRect rect = self.frame;
        rect.origin.x = value;
        self.frame = rect;
        
        return self;
    };
    return block;
}

- (WJXBlockManage *(^)(CGFloat))y{
    
    WJXBlock block = ^WJXBlockManage *(CGFloat value) {
        
        
        
        CGRect rect = self.frame;
        rect.origin.y = value;
        self.frame = rect;
        return self;
    };
    return block;
}

- (WJXBlockManage *(^)(CGFloat))width{
    
    WJXBlock block = ^WJXBlockManage *(CGFloat value) {
        
        CGRect rect = self.frame;
        rect.size.width = value;
        self.frame = rect;
        return self;
    };
    return block;
}

- (WJXBlockManage *(^)(CGFloat))height{
    
    WJXBlock block = ^WJXBlockManage *(CGFloat value) {
        
        CGRect rect = self.frame;
        rect.size.height = value;
        self.frame = rect;
        return self;
    };
    return block;
}



@end
