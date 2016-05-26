//
//  FixPlaceCircleController.m
//  SZFoldawayButton_demo
//
//  Created by 吴三忠 on 16/5/25.
//  Copyright © 2016年 吴三忠. All rights reserved.
//

#import "FixPlaceCircleController.h"
#import "SZFoldawayButton.h"

@interface FixPlaceCircleController ()

@property (nonatomic, strong) SZFoldawayButton *szBtn;
@property (nonatomic, strong) SZFoldawayButton *szBtn1;
@property (nonatomic, strong) SZFoldawayButton *szBtn2;
@property (nonatomic, strong) SZFoldawayButton *szBtn3;
@property (nonatomic, strong) SZFoldawayButton *szBtn4;
@property (nonatomic, strong) SZFoldawayButton *szBtn5;
@property (nonatomic, strong) SZFoldawayButton *szBtn6;
@property (nonatomic, strong) SZFoldawayButton *szBtn7;

@end

@implementation FixPlaceCircleController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    SZFoldawayModel *model = [[SZFoldawayModel alloc] initWithmMainBtnTitle:@"静" selectTitle:@"返" backColor:[UIColor redColor]];
    model.subBtnTitles = @[@"我", @"就", @"是", @"按", @"钮"];
    model.subBtnColors = @[[UIColor purpleColor]];
    
    self.szBtn = [[SZFoldawayButton alloc] initWithRect:CGRectMake(0, 100, 40, 40) andFoldAwayModel:model];
    self.szBtn.showType = showTypeOfCircle;
    self.szBtn.circleShowDirection = circleShowDirectionRightDown;
    self.szBtn.canBeMoved = NO;
    self.szBtn.disperseDistance = 100;
    [self.szBtn showInView:self.view navigationBar:YES tabBar:YES];
    self.szBtn.clickSubButtonBack = ^(int index, NSString *title, BOOL select){
        NSLog(@"%zd -- %@ --  %zd", index, title, select);
    };
    
    self.szBtn1 = [[SZFoldawayButton alloc] initWithRect:CGRectMake(self.view.frame.size.width - 40, 100, 40, 40) andFoldAwayModel:model];
    self.szBtn1.showType = showTypeOfCircle;
    self.szBtn1.circleShowDirection = circleShowDirectionLeftDown;
    self.szBtn1.canBeMoved = NO;
    self.szBtn1.disperseDistance = 100;
    [self.szBtn1 showInView:self.view navigationBar:YES tabBar:YES];
    self.szBtn1.clickSubButtonBack = ^(int index, NSString *title, BOOL select){
        NSLog(@"%zd -- %@ --  %zd", index, title, select);
    };
    self.szBtn4 = [[SZFoldawayButton alloc] initWithRect:CGRectMake(0, self.view.center.y, 40, 40) andFoldAwayModel:model];
    self.szBtn4.showType = showTypeOfCircle;
    self.szBtn4.circleShowDirection = circleShowDirectionRight;
    self.szBtn4.canBeMoved = NO;
    self.szBtn4.disperseDistance = 100;
    [self.szBtn4 showInView:self.view navigationBar:YES tabBar:YES];
    self.szBtn4.clickSubButtonBack = ^(int index, NSString *title, BOOL select){
        NSLog(@"%zd -- %@ --  %zd", index, title, select);
    };
    
    self.szBtn5 = [[SZFoldawayButton alloc] initWithRect:CGRectMake(self.view.center.x - 20, 100, 40, 40) andFoldAwayModel:model];
    self.szBtn5.showType = showTypeOfCircle;
    self.szBtn5.circleShowDirection = circleShowDirectionDown;
    self.szBtn5.canBeMoved = NO;
    self.szBtn5.disperseDistance = 100;
    [self.szBtn5 showInView:self.view navigationBar:YES tabBar:YES];
    self.szBtn5.clickSubButtonBack = ^(int index, NSString *title, BOOL select){
        NSLog(@"%zd -- %@ --  %zd", index, title, select);
    };
    
    model.subBtnTitles = @[@"我", @"是", @"按", @"钮"];
    model.subBtnColors = @[[UIColor orangeColor]];
    self.szBtn2 = [[SZFoldawayButton alloc] initWithRect:CGRectMake(self.view.frame.size.width - 40, self.view.frame.size.height - 150, 40, 40) andFoldAwayModel:model];
    self.szBtn2.showType = showTypeOfCircle;
    self.szBtn2.circleShowDirection = circleShowDirectionLeftUp;
    self.szBtn2.canBeMoved = NO;
    self.szBtn2.disperseDistance = 150;
    [self.szBtn2 showInView:self.view navigationBar:YES tabBar:YES];
    self.szBtn2.clickSubButtonBack = ^(int index, NSString *title, BOOL select){
        NSLog(@"%zd -- %@ --  %zd", index, title, select);
    };
    
    model.subBtnColors = @[[UIColor blueColor]];
    self.szBtn3 = [[SZFoldawayButton alloc] initWithRect:CGRectMake(0, self.view.frame.size.height - 150, 40, 40) andFoldAwayModel:model];
    self.szBtn3.showType = showTypeOfCircle;
    self.szBtn3.circleShowDirection = circleShowDirectionRightUp;
    self.szBtn3.canBeMoved = NO;
    self.szBtn3.disperseDistance = 60;
    [self.szBtn3 showInView:self.view navigationBar:YES tabBar:YES];
    self.szBtn3.clickSubButtonBack = ^(int index, NSString *title, BOOL select){
        NSLog(@"%zd -- %@ --  %zd", index, title, select);
    };
    
    self.szBtn6 = [[SZFoldawayButton alloc] initWithRect:CGRectMake(self.view.frame.size.width - 40, self.view.center.y, 40, 40) andFoldAwayModel:model];
    self.szBtn6.showType = showTypeOfCircle;
    self.szBtn6.circleShowDirection = circleShowDirectionLeft;
    self.szBtn6.canBeMoved = NO;
    self.szBtn6.disperseDistance = 80;
    [self.szBtn6 showInView:self.view navigationBar:YES tabBar:YES];
    self.szBtn6.clickSubButtonBack = ^(int index, NSString *title, BOOL select){
        NSLog(@"%zd -- %@ --  %zd", index, title, select);
    };
    
    self.szBtn7 = [[SZFoldawayButton alloc] initWithRect:CGRectMake(self.view.center.x - 20, self.view.frame.size.height - 150, 40, 40) andFoldAwayModel:model];
    self.szBtn7.showType = showTypeOfCircle;
    self.szBtn7.circleShowDirection = circleShowDirectionUp;
    self.szBtn7.canBeMoved = NO;
    self.szBtn7.disperseDistance = 80;
    [self.szBtn7 showInView:self.view navigationBar:YES tabBar:YES];
    self.szBtn7.clickSubButtonBack = ^(int index, NSString *title, BOOL select){
        NSLog(@"%zd -- %@ --  %zd", index, title, select);
    };
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)dismiss:(id)sender {
    
    [self.szBtn remove];
    [self.szBtn1 remove];
    [self.szBtn2 remove];
    [self.szBtn3 remove];
    [self.szBtn4 remove];
    [self.szBtn5 remove];
    [self.szBtn6 remove];
    [self.szBtn7 remove];
    [self dismissViewControllerAnimated:YES completion:nil];
}


@end
