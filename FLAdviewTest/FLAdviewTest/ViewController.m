//
//  ViewController.m
//  FLAdviewTest
//
//  Created by apple on 15/5/8.
//  Copyright (c) 2015年 fengling2300. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    FLAdView *adView = [[FLAdView alloc]initWithFrame:CGRectMake(0, 20, self.view.frame.size.width, 200)];
    adView.imageArray = @[@"u8",@"u10",@"u12"];
    adView.location = PageControlCenter;//设置pagecontrol的位置
    adView.currentPageColor = [UIColor redColor];//选中pagecontrol的颜色
    adView.normalColor = [UIColor yellowColor];//未选中的pagecontol的颜色
    adView.chageTime = 3.0f;//定时时间 默认3秒
    adView.flDelegate = self;//图片点击事件delegate
    [self.view addSubview:adView];
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)imageTaped:(UIImageView *)imageView{
    NSLog(@"imageView tag is %d",imageView.tag);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
