//
//  UIImage+Corner.h
//  TestImageViewCorner2017080401
//
//  Created by amglfk on 2017/8/4.
//  Copyright © 2017年 amglfk. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (Corner)

/**
 返回有圆角的图片

 @param name 本地图片的名字
 @param cornerRadius 圆角半径
 @return 返回指定圆角的图片
 */
+ (instancetype)cornerImageWithName:(NSString *)name cornerRadius:(CGFloat)cornerRadius;

/**
 返回有圆角的图片

 @param name 本地图片的名字
 @param width 显示图片的宽度
 @param height 显示图片的高度
 @param cornerRadius 圆角半径
 @return 返回指定圆角的图片
 */
+ (instancetype)cornerImageWithName:(NSString *)name width:(CGFloat)width height:(CGFloat)height cornerRadius:(CGFloat)cornerRadius;

/**
 返回有圆角的图片

 @param urlString 图片的链接
 @param cornerRadius 圆角半径
 @return 返回指定链接带有圆角的图片
 */
+ (instancetype)cornerImageWithUrlString:(NSString *)urlString cornerRadius:(CGFloat)cornerRadius;

/**
 返回有圆角的图片

 @param urlString 图片的链接
 @param width 显示图片的宽度
 @param height 显示图片的高度
 @param cornerRadius 圆角半径
 @return 返回指定链接带有圆角的图片
 */
+ (instancetype)cornerImageWithUrlString:(NSString *)urlString width:(CGFloat)width height:(CGFloat)height cornerRadius:(CGFloat)cornerRadius;

@end
