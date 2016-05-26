//
//  MoveLineController.m
//  SZFoldawayButton_demo
//
//  Created by 吴三忠 on 16/5/25.
//  Copyright © 2016年 吴三忠. All rights reserved.
//

#import "MoveLineController.h"
#import "SZFoldawayButton.h"

@interface MoveLineController ()

@property (nonatomic, strong) SZFoldawayButton *szBtn;

@end

@implementation MoveLineController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    SZFoldawayModel *model = [[SZFoldawayModel alloc] initWithmMainBtnTitle:@"动" selectTitle:@"返" backColor:[UIColor redColor]];
    model.subBtnTitles = @[@"我", @"就", @"是", @"按", @"钮"];
    model.subBtnColors = @[[UIColor purpleColor], [UIColor greenColor], [UIColor blueColor], [UIColor orangeColor], [UIColor lightGrayColor]];
    
    self.szBtn = [[SZFoldawayButton alloc] initWithRect:CGRectMake(0, 100, 40, 40) andFoldAwayModel:model];
    self.szBtn.showType = showTypeOfLine;
    self.szBtn.automaticShowDirection = YES;
    self.szBtn.disperseDistance = 60;
    [self.szBtn showInView:self.view];
    self.szBtn.clickSubButtonBack = ^(int index, NSString *title, BOOL select){
        NSLog(@"%zd -- %@ --  %zd", index, title, select);
    };

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)dismiss:(id)sender {
    
    [self.szBtn remove];
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
