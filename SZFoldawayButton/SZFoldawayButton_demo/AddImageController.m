//
//  AddImageController.m
//  SZFoldawayButton_demo
//
//  Created by 吴三忠 on 16/5/25.
//  Copyright © 2016年 吴三忠. All rights reserved.
//

#import "AddImageController.h"
#import "SZFoldawayButton.h"

@interface AddImageController ()

@property (nonatomic, strong) SZFoldawayButton *szBtn;
@property (nonatomic, strong) SZFoldawayButton *szBtn1;

@end

@implementation AddImageController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    SZFoldawayModel *model = [[SZFoldawayModel alloc] initWithmMainBtnTitle:@"动" selectTitle:@"返" backColor:[UIColor redColor]];
//    model.subBtnTitles = @[@"我", @"就", @"是", @"按", @"钮"];
    model.subBtnImages = @[@"foregroundStar", @"foregroundStar", @"foregroundStar", @"foregroundStar", @"foregroundStar"];
    model.subBtnSelectImages = @[@"backgroundStar", @"backgroundStar", @"backgroundStar", @"backgroundStar", @"backgroundStar"];
    
    self.szBtn = [[SZFoldawayButton alloc] initWithRect:CGRectMake(0, 100, 40, 40) andFoldAwayModel:model];
    self.szBtn.showType = showTypeOfLine;
    self.szBtn.automaticShowDirection = YES;
    self.szBtn.disperseDistance = 60;
    [self.szBtn showInView:self.view];
    self.szBtn.clickSubButtonBack = ^(int index, NSString *title, BOOL select){
        NSLog(@"%zd -- %@ --  %zd", index, title, select);
    };
    
    self.szBtn1 = [[SZFoldawayButton alloc] initWithRect:CGRectMake(self.view.frame.size.width - 40, 100, 40, 40) andFoldAwayModel:model];
    self.szBtn1.showType = showTypeOfCircle;
    self.szBtn1.automaticShowDirection = YES;
    self.szBtn1.disperseDistance = 160;
    [self.szBtn1 showInView:self.view];
    self.szBtn1.clickSubButtonBack = ^(int index, NSString *title, BOOL select){
        NSLog(@"%zd -- %@ --  %zd", index, title, select);
    };
}

- (IBAction)dismiss:(id)sender {
    
    [self.szBtn remove];
    [self.szBtn1 remove];
    [self dismissViewControllerAnimated:YES completion:nil];
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
