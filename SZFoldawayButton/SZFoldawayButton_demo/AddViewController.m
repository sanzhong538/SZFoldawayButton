//
//  AddViewController.m
//  SZFoldawayButton_demo
//
//  Created by 吴三忠 on 16/5/25.
//  Copyright © 2016年 吴三忠. All rights reserved.
//

#import "AddViewController.h"
#import "SZFoldawayButton.h"

@interface AddViewController ()

@property (nonatomic, strong) SZFoldawayButton *szBtn;
@property (nonatomic, strong) SZFoldawayButton *szBtn1;

@end

@implementation AddViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    SZFoldawayModel *model = [[SZFoldawayModel alloc] initWithmMainBtnTitle:@"动" selectTitle:@"返" backColor:[UIColor redColor]];
    model.subBtnTitles = @[@"我", @"就", @"是", @"按", @"钮"];
    model.subBtnColors = @[[UIColor purpleColor]];
    
    // 有弹簧效果 默认
    self.szBtn1 = [[SZFoldawayButton alloc] initWithRect:CGRectMake(self.view.frame.size.width - 40, 100, 40, 40) andFoldAwayModel:model];
    self.szBtn1.showType = showTypeOfCircle;
    self.szBtn1.showSuperViewCenter = YES;
    [self.szBtn1 showInView:self.view navigationBar:YES tabBar:YES];
    self.szBtn1.clickSubButtonBack = ^(int index, NSString *title, BOOL select){
        NSLog(@"%zd -- %@ --  %zd", index, title, select);
    };
    
    // 没有弹簧效果
    model.mainBtnTitle = @"静";
    model.mainBtnSelectTitle = @"返";
    self.szBtn = [[SZFoldawayButton alloc] initWithRect:CGRectMake(0, 400, 40, 40) andFoldAwayModel:model];
    self.szBtn.showType = showTypeOfCircle;
    self.szBtn.showSuperViewCenter = YES;
    self.szBtn.showWithSpring = NO;
    self.szBtn.canBeMoved = NO;
    [self.szBtn showInView:self.view navigationBar:YES tabBar:YES];
    self.szBtn.clickSubButtonBack = ^(int index, NSString *title, BOOL select){
        NSLog(@"%zd -- %@ -- %zd", index, title, select);
    };

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillDisappear:(BOOL)animated {
    
    [super viewWillDisappear:animated];
}

- (IBAction)dismiss:(id)sender {
    
    [self.szBtn remove];
    [self.szBtn1 remove];
    [self dismissViewControllerAnimated:YES completion:nil];
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
