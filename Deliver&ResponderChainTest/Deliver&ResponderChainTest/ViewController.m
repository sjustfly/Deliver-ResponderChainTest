//
//  ViewController.m
//  Deliver&ResponderChainTest
//
//  Created by 普拉斯 on 16/8/4.
//  Copyright © 2016年 lc. All rights reserved.
//

#import "ViewController.h"
#import "TCTestView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = self.view.bounds;
    [button addTarget:self action:@selector(actionTapGesture:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];

    TCTestView *testView = [[TCTestView alloc] initWithFrame:[UIScreen mainScreen].bounds];
    testView.alpha = 0.5;
    testView.backgroundColor = [UIColor redColor];
    
    [self.view addSubview:testView]; // testView 和button 同一个父节点
//    [button addSubview:testView]; // button 是textView的父节点
}

- (void)actionTapGesture:(id)sender
{
    NSLog(@"actionTapGesture");
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
