//
//  GradientDrawView.m
//  Shuzan
//
//  Created by Xu小波 on 2017/12/7.
//  Copyright © 2017年 Shujin. All rights reserved.
//

#import "GradientDrawView.h"


@interface GradientDrawView ()

@property (nonatomic, strong) UILabel *label;

@property (nonatomic, strong) CAGradientLayer *gLayer;

@end

@implementation GradientDrawView

- (UIView *)drawGradientText:(NSString *)text {
    
    self.backgroundColor = [UIColor whiteColor];
    
    self.label.text = text;
    
    self.gLayer.mask = self.label.layer;
    
    return self;
}

- (UILabel *)label{
    
    if (!_label) {
        
        _label = [[UILabel alloc]initWithFrame:self.bounds];
        _label.backgroundColor = [UIColor clearColor];
        _label.textAlignment = NSTextAlignmentLeft;
        _label.font = [UIFont systemFontOfSize:24];
        
    }
    return _label;
}

- (CAGradientLayer *)gLayer{
    
    if (!_gLayer) {
        
        _gLayer = [[CAGradientLayer alloc] init];
        _gLayer.colors = @[(id)[UIColor redColor].CGColor,(id)[UIColor greenColor].CGColor];
        _gLayer.locations= @[[NSNumber numberWithFloat:0.5],[NSNumber numberWithFloat:0.5]];
        _gLayer.startPoint = CGPointMake(0, 0);
        _gLayer.endPoint = CGPointMake(1, 1);
        _gLayer.frame = self.bounds;
        
        [self.layer addSublayer:_gLayer];
    }
    return _gLayer;
}

@end
