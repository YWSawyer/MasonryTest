//
//  MasBasicViewController.m
//  MasonryTest
//
//  Created by dahuoshi on 15/01/2018.
//  Copyright © 2018 dahuoshi. All rights reserved.
//

#import "MasBasicViewController.h"
#import "Masonry.h"

@interface MasBasicViewController ()

@end

@implementation MasBasicViewController

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
    
    //
    UIView *superView = self.view;
    
    [greenView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(superView).with.offset(20);
        make.leading.equalTo(superView).with.offset(20);
        make.width.mas_equalTo(blueView);
    }];
    
    [blueView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(greenView);
        make.right.equalTo(superView.mas_right).offset(-20);
        make.left.equalTo(greenView.mas_right).offset(20);
    }];
    
    [grayView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(superView).offset(20);
        make.right.equalTo(superView).offset(-20);
        make.top.equalTo(greenView.mas_bottom).offset(20);
        make.bottom.equalTo(superView.mas_bottom).offset(-20);
        make.height.equalTo(greenView.mas_height);
        make.height.equalTo(blueView.mas_height);
    }];
    
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
