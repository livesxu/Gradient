//
//  GradientDrawView.h
//  Shuzan
//
//  Created by Xu小波 on 2017/12/7.
//  Copyright © 2017年 Shujin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GradientDrawView : UIView

/**
 首页文字渐变处理

 @param text 文字内容
 @return self
 */
- (UIView *)drawGradientText:(NSString *)text;

@end
