//
//  UIImage+Corner.m
//  TestImageViewCorner2017080401
//
//  Created by amglfk on 2017/8/4.
//  Copyright © 2017年 amglfk. All rights reserved.
//

#import "UIImage+Corner.h"

@implementation UIImage (Corner)

// 返回有圆角的图片
+ (instancetype)cornerImageWithName:(NSString *)name cornerRadius:(CGFloat)cornerRadius {
    return [self cornerImageWithName:name width:0 height:0 cornerRadius:cornerRadius];
}

// 返回有圆角的图片
+ (instancetype)cornerImageWithName:(NSString *)name width:(CGFloat)width height:(CGFloat)height cornerRadius:(CGFloat)cornerRadius {
    UIImage *image = [UIImage imageNamed:name];
    return [image cornerImageWithcornerRadius:cornerRadius width:width height:height];
}

// 返回有圆角的图片
+ (instancetype)cornerImageWithUrlString:(NSString *)urlString cornerRadius:(CGFloat)cornerRadius {
    return [self cornerImageWithUrlString:urlString width:0 height:0 cornerRadius:cornerRadius];
}

+ (instancetype)cornerImageWithUrlString:(NSString *)urlString width:(CGFloat)width height:(CGFloat)height cornerRadius:(CGFloat)cornerRadius {
    UIImage *image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:urlString]]];
    return [image cornerImageWithcornerRadius:cornerRadius width:width height:height];
}

/**
 绘制圆角图片

 @param cornerRadius 圆角半径
 @return 带圆角的图片
 */
- (instancetype)cornerImageWithcornerRadius:(CGFloat)cornerRadius width:(CGFloat)width height:(CGFloat)height {
    if ( !self ) {
        return nil;
    }
    CGFloat w = cornerRadius * 2.0;
    CGFloat h = w;
    if ( width > 0 && height > 0 ) {
        w = width;
        h = height;
    }
    UIGraphicsBeginImageContextWithOptions(CGSizeMake(w, h), NO, 1);
    // 圆角半径大于矩形宽或高就获取宽或高的一半
    CGRect frame = CGRectMake(0, 0, w, h);
    [[UIBezierPath bezierPathWithRoundedRect:frame cornerRadius:cornerRadius] addClip];
    [self drawInRect:frame];
    UIImage *cornerImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return cornerImage;
}

@end
