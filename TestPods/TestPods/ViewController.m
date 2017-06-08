//
//  ViewController.m
//  TestPods
//
//  Created by bob on 2017/6/8.
//  Copyright © 2017年 TestPods. All rights reserved.
//

#import "ViewController.h"
#import <SDWebImage/UIImageView+WebCache.h>
#import <DataLayer/DataLayer.h>


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    imageView.backgroundColor = [UIColor blackColor];
    [self.view addSubview:imageView];
    
    NSURL *url = [NSURL URLWithString:@"http://i0.letvimg.com/lc02_isvrs/201511/30/23/56/7c8046c1-40f7-4267-adae-c6b882ae218c/thumb/2_400_225.jpg"];
    [imageView sd_setImageWithURL:url];
    
    DataLayer *layer = [[DataLayer alloc] init];
    layer.data = @"Hello";
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
