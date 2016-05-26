//
//  SZFoldawayModel.h
//  SZGesture_test
//
//  Created by 吴三忠 on 16/5/24.
//  Copyright © 2016年 吴三忠. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SZFoldawayModel : NSObject

/**
 *  主按钮名
 */
@property (nonatomic, copy) NSString *mainBtnTitle;

/**
 *  主按钮选择显示名
 */
@property (nonatomic, copy) NSString *mainBtnSelectTitle;

/**
 *  主按钮背景图片
 */
@property (nonatomic, copy) NSString *mainBtnImage;

/**
 *  主按钮选择背景图片
 */
@property (nonatomic, copy) NSString *mainBtnSelectImage;

/**
 *  主按钮背景颜色
 */
@property (nonatomic, strong) UIColor *mainBtnColor;

/**
 *  子按钮名数组
 */
@property (nonatomic, strong) NSArray *subBtnTitles;

/**
 *  子按钮选择名数组
 */
@property (nonatomic, strong) NSArray *subBtnSelectTitles;

/**
 *  子按钮背景颜色
 */
@property (nonatomic, strong) NSArray *subBtnColors;

/**
 *  子按钮背景图片
 */
@property (nonatomic, strong) NSArray *subBtnImages;

/**
 *  子按钮选择背景图片
 */
@property (nonatomic, strong) NSArray *subBtnSelectImages;

/**
 *  子按钮高亮背景图片
 */
@property (nonatomic, strong) NSArray *subBtnHighLightImages;


- (instancetype)initWithmMainBtnTitle:(NSString *)title selectTitle:(NSString *)selectTitle backColor:(UIColor *)color image:(NSString *)image selectImage:(NSString *)selectImage;

- (instancetype)initWithmMainBtnTitle:(NSString *)title selectTitle:(NSString *)selectTitle backColor:(UIColor *)color;

- (instancetype)initWithmMainBtnTitle:(NSString *)title selectTitle:(NSString *)selectTitle  image:(NSString *)image selectImage:(NSString *)selectImage;

@end
