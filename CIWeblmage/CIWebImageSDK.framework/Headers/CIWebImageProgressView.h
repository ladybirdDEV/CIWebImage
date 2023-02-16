//
//  CIProgressView.h
//  baseModuleTest
//
//  Created by ikeyyang on 2020/2/14.
//  Copyright © 2020 ikeyyang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CIWebImageProgressView : UIView

@property (nonatomic, assign) CGFloat progress;
//进度条颜色
@property(nonatomic,strong) UIColor *progerssColor;
//进度条背景颜色
@property(nonatomic,strong) UIColor *progerssBackgroundColor;
//进度条的宽度
@property(nonatomic,assign) CGFloat progerWidth;
//进度数据字体大小
@property(nonatomic,assign) CGFloat percentageFontSize;
//进度数字颜色
@property(nonatomic,strong) UIColor *percentFontColor;
//进度数字是否显示 默认不显示
@property (nonatomic, assign) BOOL isShowPercent;

@end

