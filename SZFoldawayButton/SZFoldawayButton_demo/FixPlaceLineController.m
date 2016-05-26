//
//  FixPlaceLineController.m
//  SZFoldawayButton_demo
//
//  Created by 吴三忠 on 16/5/25.
//  Copyright © 2016年 吴三忠. All rights reserved.
//

#import "FixPlaceLineController.h"
#import "SZFoldawayButton.h"

@interface FixPlaceLineController ()

@property (nonatomic, strong) SZFoldawayButton *szBtn;
@property (nonatomic, strong) SZFoldawayButton *szBtn1;
@property (nonatomic, strong) SZFoldawayButton *szBtn2;
@property (nonatomic, strong) SZFoldawayButton *szBtn3;

@end

@implementation FixPlaceLineController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    SZFoldawayModel *model = [[SZFoldawayModel alloc] initWithmMainBtnTitle:@"静" selectTitle:@"返" backColor:[UIColor redColor]];
    model.subBtnTitles = @[@"我", @"就", @"是", @"按", @"钮"];
    model.subBtnColors = @[[UIColor purpleColor], [UIColor greenColor], [UIColor blueColor], [UIColor orangeColor], [UIColor lightGrayColor]];
    
    self.szBtn = [[SZFoldawayButton alloc] initWithRect:CGRectMake(0, 100, 40, 40) andFoldAwayModel:model];
    self.szBtn.showType = showTypeOfLine;
    self.szBtn.lineShowDirection = lineShowDirectionDown;
    self.szBtn.canBeMoved = NO;
    self.szBtn.disperseDistance = 100;
    [self.szBtn showInView:self.view];
    self.szBtn.clickSubButtonBack = ^(int index, NSString *title, BOOL select){
        NSLog(@"%zd -- %@ --  %zd", index, title, select);
    };
    
    self.szBtn1 = [[SZFoldawayButton alloc] initWithRect:CGRectMake(self.view.frame.size.width - 40, 100, 40, 40) andFoldAwayModel:model];
    self.szBtn1.showType = showTypeOfLine;
    self.szBtn1.lineShowDirection = lineShowDirectionLeft;
    self.szBtn1.canBeMoved = NO;
    self.szBtn1.disperseDistance = 50;
    [self.szBtn1 showInView:self.view];
    self.szBtn1.clickSubButtonBack = ^(int index, NSString *title, BOOL select){
        NSLog(@"%zd -- %@ --  %zd", index, title, select);
    };
    self.szBtn2 = [[SZFoldawayButton alloc] initWithRect:CGRectMake(0, self.view.frame.size.height - 150, 40, 40) andFoldAwayModel:model];
    self.szBtn2.showType = showTypeOfLine;
    self.szBtn2.lineShowDirection = lineShowDirectionRight;
    self.szBtn2.canBeMoved = NO;
    self.szBtn2.disperseDistance = 50;
    [self.szBtn2 showInView:self.view];
    self.szBtn2.clickSubButtonBack = ^(int index, NSString *title, BOOL select){
        NSLog(@"%zd -- %@ --  %zd", index, title, select);
    };
    
    self.szBtn3 = [[SZFoldawayButton alloc] initWithRect:CGRectMake(self.view.frame.size.width - 40, self.view.frame.size.height - 150, 40, 40) andFoldAwayModel:model];
    self.szBtn3.showType = showTypeOfLine;
    self.szBtn3.lineShowDirection = lineShowDirectionUp;
    self.szBtn3.canBeMoved = NO;
    self.szBtn3.disperseDistance = 100;
    [self.szBtn3 showInView:self.view];
    self.szBtn3.clickSubButtonBack = ^(int index, NSString *title, BOOL select){
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
