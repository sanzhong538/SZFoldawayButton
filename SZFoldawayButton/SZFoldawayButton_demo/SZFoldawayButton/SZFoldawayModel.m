//
//  SZFoldawayModel.m
//  SZGesture_test
//
//  Created by 吴三忠 on 16/5/24.
//  Copyright © 2016年 吴三忠. All rights reserved.
//

#import "SZFoldawayModel.h"

@implementation SZFoldawayModel

- (instancetype)initWithmMainBtnTitle:(NSString *)title selectTitle:(NSString *)selectTitle backColor:(UIColor *)color image:(NSString *)image selectImage:(NSString *)selectImage {
    
    self = [super init];
    
    self.mainBtnTitle       = title;
    self.mainBtnSelectTitle = selectTitle;
    self.mainBtnColor       = color;
    self.mainBtnImage       = image;
    self.mainBtnSelectImage = selectImage;
    
    return self;
}

- (instancetype)initWithmMainBtnTitle:(NSString *)title selectTitle:(NSString *)selectTitle backColor:(UIColor *)color {
    
    return [self initWithmMainBtnTitle:title selectTitle:selectTitle backColor:color image:nil selectImage:nil];
}

- (instancetype)initWithmMainBtnTitle:(NSString *)title selectTitle:(NSString *)selectTitle  image:(NSString *)image selectImage:(NSString *)selectImage {
    
    return [self initWithmMainBtnTitle:title selectTitle:selectTitle backColor:nil image:image selectImage:selectImage];
}

@end
