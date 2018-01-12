//
//  Test1ViewController.m
//  MasonryTest
//
//  Created by dahuoshi on 12/01/2018.
//  Copyright © 2018 dahuoshi. All rights reserved.
//

#import "Test1ViewController.h"
#import "Masonry.h"

@interface Test1ViewController ()

@end

@implementation Test1ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    self.navigationController.navigationBar.translucent = NO;
    UIView *greenView = [UIView new];
    greenView.backgroundColor = [UIColor greenColor];
    UIView *blueView  = [UIView new];
    blueView.backgroundColor = [UIColor blueColor];
    UIView *grayView  = [UIView new];
    grayView.backgroundColor = [UIColor grayColor];
    
    [self.view addSubview:greenView];
    [self.view addSubview:blueView];
    [self.view addSubview:grayView];
    
    greenView.translatesAutoresizingMaskIntoConstraints = NO;
    blueView.translatesAutoresizingMaskIntoConstraints  = NO;
    grayView.translatesAutoresizingMaskIntoConstraints  = NO;
//
    UIView *superView = self.view;
    
//    [greenView mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.top.equalTo(superView).with.offset(20);
//        make.leading.equalTo(superView).with.offset(20);
//        make.height.equalTo(@100);
//        make.height.and.width.mas_equalTo(blueView);
//    }];
    
    
    [superView addConstraints:@[[NSLayoutConstraint constraintWithItem:greenView attribute:NSLayoutAttributeLeading relatedBy:NSLayoutRelationEqual toItem:superView attribute:NSLayoutAttributeLeading multiplier:1 constant:10],
                                [NSLayoutConstraint constraintWithItem:greenView attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:superView attribute:NSLayoutAttributeTop multiplier:1 constant:10],
                                [NSLayoutConstraint constraintWithItem:greenView attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:0 constant:100],
                                [NSLayoutConstraint constraintWithItem:greenView attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:blueView attribute:NSLayoutAttributeWidth multiplier:1 constant:0],
                                [NSLayoutConstraint constraintWithItem:greenView attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:blueView attribute:NSLayoutAttributeTop multiplier:1 constant:0],
                                [NSLayoutConstraint constraintWithItem:greenView attribute:NSLayoutAttributeRight relatedBy:NSLayoutRelationEqual toItem:blueView attribute:NSLayoutAttributeLeft multiplier:1 constant:-10],
                                [NSLayoutConstraint constraintWithItem:blueView attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:greenView attribute:NSLayoutAttributeWidth multiplier:1 constant:0],
                                [NSLayoutConstraint constraintWithItem:blueView attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:greenView attribute:NSLayoutAttributeHeight multiplier:1 constant:0],
                                [NSLayoutConstraint constraintWithItem:grayView attribute:NSLayoutAttributeRight relatedBy:NSLayoutRelationEqual toItem:superView attribute:NSLayoutAttributeRight multiplier:1 constant:-10],
                                [NSLayoutConstraint constraintWithItem:greenView attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:grayView attribute:NSLayoutAttributeTop multiplier:1 constant:0],
                                [NSLayoutConstraint constraintWithItem:blueView attribute:NSLayoutAttributeRight relatedBy:NSLayoutRelationEqual toItem:grayView attribute:NSLayoutAttributeLeft multiplier:1 constant:-10],
                                [NSLayoutConstraint constraintWithItem:blueView attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:grayView attribute:NSLayoutAttributeWidth multiplier:1 constant:0],
                                [NSLayoutConstraint constraintWithItem:blueView attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:grayView attribute:NSLayoutAttributeHeight multiplier:1 constant:0],


                                ]];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
