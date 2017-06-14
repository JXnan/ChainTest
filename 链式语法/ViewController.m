//
//  ViewController.m
//  链式语法
//
//  Created by 王家薪 on 2017/6/14.
//  Copyright © 2017年 xingchouwang. All rights reserved.
//

#import "ViewController.h"

#import "UIView+Block.h"

@interface ViewController ()

/** uiview */
@property (nonatomic,strong) UIView * testView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _testView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    _testView.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:_testView];
    
    self.test(1).test(2).test(3);
    

}

- (ViewController *(^)(int))test{
    
    ViewController *(^block)(int i) = ^ViewController *(int i){
        NSLog(@"%d",i);
        return self;
    };
    return block;
}


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    [_testView updataFrame:^(WJXBlockManage *manage) {
       
        manage.x(10).y(10).width(200).height(200);

    }];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
