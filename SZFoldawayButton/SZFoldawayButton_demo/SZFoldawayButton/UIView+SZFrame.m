//
//  UIView+SZFrame.m
//
//  Created by WUSANZHONG on 15/8/6.
//  Copyright (c) 2015年 WUSANZHONG. All rights reserved.
//

#import "UIView+SZFrame.h"

@implementation UIView (SZFrame)


- (CGFloat)centerX{
    
    return self.center.x;
}

//修改中心点center的x
- (void)setCenterX:(CGFloat)centerX{
    
    CGPoint center = self.center;
    
    center.x = centerX;
    
    self.center = center;
}

- (CGFloat)centerY{
    
    return self.center.y;
}

//修改中心点center的y
- (void)setCenterY:(CGFloat)centerY{
    
    CGPoint center = self.center;
    
    center.y = centerY;
    
    self.center = center;
}

- (CGFloat)x{
    
    return self.frame.origin.x;
}

//修改frame的x值
- (void)setX:(CGFloat)x{
    
    CGRect frame = self.frame;
    
    frame.origin.x = x;
    
    self.frame = frame;
}

- (CGFloat)y{
    
    return self.frame.origin.y;
}

//修改frame的y值
- (void)setY:(CGFloat)y{
    
    CGRect frame = self.frame;
    
    frame.origin.y = y;
    
    self.frame = frame;
}

//修改frame的size
- (CGSize)size{
    
    return self.frame.size;
}

- (void)setSize:(CGSize)size{
    
    CGRect frame = self.frame;
    
    frame.size = size;
    
    self.frame = frame;
}

//修改frame的origin
- (CGPoint)origin{
    
    return self.frame.origin;
}

- (void)setOrigin:(CGPoint)origin{
    
    CGRect frame = self.frame;
    
    frame.origin = origin;
    
    self.frame = frame;
}

//修改frame的width
- (CGFloat)width{
    
    return self.frame.size.width;
}

- (void)setWidth:(CGFloat)width{
    
    CGRect frame = self.frame;
    
    frame.size.width = width;
    
    self.frame = frame;
}

//修改frame的height
- (CGFloat)height{
    
    return self.frame.size.height;
}

- (void)setHeight:(CGFloat)height{
    
    CGRect frame = self.frame;
    
    frame.size.height = height;
    
    self.frame = frame;
}

@end
