//
//  ViewController.h
//  链式语法
//
//  Created by 王家薪 on 2017/6/14.
//  Copyright © 2017年 xingchouwang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

- (ViewController *(^)(int))test;
@end

