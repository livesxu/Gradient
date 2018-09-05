//
//  ViewController.m
//  GradientDemo
//
//  Created by livesxu on 2018/9/5.
//  Copyright © 2018年 Livesxu. All rights reserved.
//

#import "ViewController.h"

#import "GradientDrawView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    GradientDrawView *view = [[GradientDrawView alloc]initWithFrame:CGRectMake(10, 50, 100, 50)];
    [self.view addSubview:[view drawGradientText:@"Livesxu"]];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
