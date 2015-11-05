//
//  LineChartView.h
//  chart
//
//  Created by City--Online on 15/9/17.
//  Copyright © 2015年 City--Online. All rights reserved.
//

#import <UIKit/UIKit.h>

//设置两点的水平间距
#define SPACING 70.0

//文本类型
typedef NS_ENUM(NSInteger, TitleType) {
    TitleForX,
    TitleForPoint
};


@class LineChartView;

@protocol LineChartDataSource <NSObject>
@required

//折点数量
-(NSInteger)numberForChart:(LineChartView *)chart;

//折点数值
-(float)chart:(LineChartView *)chart valueAtIndex:(NSInteger)index;

@optional

//X轴坐标是否有背景色
-(BOOL)chart:(LineChartView *)chart backGroundColorAtXPointIndex:(NSInteger)index;

//X 轴的标题
-(NSString *)chart:(LineChartView *)chart titleForXLabelAtIndex:(NSInteger)index;

@end

@interface LineChartView : UIScrollView
@property(nonatomic,assign)id<LineChartDataSource> dataSource;
@end
