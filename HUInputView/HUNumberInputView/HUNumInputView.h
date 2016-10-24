//
//  HUNumInputView.h
//  YSDemo
//
//  Created by huweiya on 16/10/24.
//  Copyright © 2016年 5i5j. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HUNumInputView : UIView

/**
 返回自定义数字键盘

 @param isRandom 是否随机
 @param mainView textField

 @return 自定义键盘
 */
- (instancetype)initIsRandom:(BOOL)isRandom mainView:(UIView *)mainView;


@end
