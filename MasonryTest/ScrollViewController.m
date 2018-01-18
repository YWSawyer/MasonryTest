//
//  ScrollViewController.m
//  MasonryTest
//
//  Created by dahuoshi on 18/01/2018.
//  Copyright © 2018 dahuoshi. All rights reserved.
//

#import "ScrollViewController.h"
#import "Masonry.h"

@interface ScrollViewController ()

@property (strong, nonatomic) UIScrollView *scrollView;

@end

@implementation ScrollViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //不适用自动布局情况
//    UIScrollView *scrollView = [[UIScrollView alloc]initWithFrame:self.view.frame];
//    [self.view addSubview:scrollView];
//
//    scrollView.backgroundColor = [UIColor grayColor];
//
//    UIView *view1 = [[UIView alloc]initWithFrame:CGRectMake(10, 50, 100, 200)];
//    view1.backgroundColor = [UIColor greenColor];
//    [scrollView addSubview:view1];
//
//    UIView *view2 = [[UIView alloc]initWithFrame:CGRectMake(10, 300, 100, 200)];
//    view2.backgroundColor = [UIColor blueColor];
//    [scrollView addSubview:view2];
//
//
//    UIView *view3 = [[UIView alloc]initWithFrame:CGRectMake(10, 550, 100, 200)];
//    view3.backgroundColor = [UIColor greenColor];
//    [scrollView addSubview:view3];
    
    //使用autolayout布局
    self.scrollView = [UIScrollView new];
    self.scrollView.backgroundColor = [UIColor grayColor];
    self.scrollView.scrollEnabled = YES;
    [self.view addSubview:self.scrollView];

    
    //使用容器view自动布局
//    UIView *backView = [UIView new];
//    backView.backgroundColor = [UIColor brownColor];
//    [self.scrollView addSubview:backView];
//
//    UIView *view1 = [UIView new];
//    view1.backgroundColor = [UIColor greenColor];
//    [backView addSubview:view1];
//
//    UIView *view2 = [UIView new];
//    view2.backgroundColor = [UIColor blueColor];
//    [backView addSubview:view2];
//
//
//    UIView *view3 = [UIView new];
//    view3.backgroundColor = [UIColor greenColor];
//    [backView addSubview:view3];
//
//    [self.scrollView mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.edges.equalTo(self.view);
//    }];
//
//    [backView mas_makeConstraints:^(MASConstraintMaker *make) {
//        //设置scrollview的contentSize依赖于容器view。
//        make.left.top.right.bottom.equalTo(self.scrollView);
//        //设置scrollview的contentSize的宽度依赖于容器view。
//        make.width.equalTo(self.scrollView);
//    }];
//
//    [view1 mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.left.equalTo(@10);
//        make.top.equalTo(@50);
//        make.size.sizeOffset(CGSizeMake(100, 200));
//    }];
//
//    [view2 mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.top.equalTo(view1.mas_bottom).with.offset(50);
//        make.left.equalTo(view1);
//        make.width.and.height.equalTo(view1);
//    }];
//
//    [view3 mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.top.equalTo(view2.mas_bottom).with.offset(50);
//        make.left.equalTo(view1);
//        make.width.and.height.equalTo(view1);
//    }];
//
//    [backView mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.bottom.equalTo(view3.mas_bottom);
//    }];
    
    //不使用容器布局scrollview
    UIView *view1 = [UIView new];
    view1.backgroundColor = [UIColor greenColor];
    [self.scrollView addSubview:view1];
    
    UIView *view2 = [UIView new];
    view2.backgroundColor = [UIColor blueColor];
    [self.scrollView addSubview:view2];
    
    
    UIView *view3 = [UIView new];
    view3.backgroundColor = [UIColor greenColor];
    [self.scrollView addSubview:view3];
    
    [self.scrollView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.view);
    }];
    
    [view1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.top.equalTo(self.scrollView).insets(UIEdgeInsetsMake(70, 20, 0, 0 ));
        make.width.equalTo(@100);
        make.height.equalTo(@200);
        //如果没有这一句代码，contensize的宽度就为0了。
        make.right.equalTo(self.scrollView);
    }];
    
    [view2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(view1);
        make.top.equalTo(view1.mas_bottom).offset(50);
        make.size.equalTo(view1);
    }];
    
    [view3 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(view2.mas_bottom).with.offset(50);
        make.left.equalTo(view1);
        make.width.and.height.equalTo(view1);
        make.bottom.equalTo(self.scrollView.mas_bottom);
    }];

    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)leftBtnAction:(UIBarButtonItem *)sender {
    NSLog(@"content size :%@",NSStringFromCGSize(self.scrollView.contentSize));
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
