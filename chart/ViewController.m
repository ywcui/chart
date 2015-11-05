//
//  ViewController.m
//  chart
//
//  Created by City--Online on 15/9/17.
//  Copyright © 2015年 City--Online. All rights reserved.
//

#import "ViewController.h"
#import "LineChartView.h"

@interface ViewController ()<LineChartDataSource>
@property (nonatomic,strong) NSArray *points;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _points=@[@30,@40,@80,@10,@0,@70,@40,@80,@90,@20];
    
    LineChartView *lineChart=[[LineChartView alloc]initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, 300)];
    
    lineChart.dataSource=self;
    
    [self.view addSubview:lineChart];
    LineChartView *lineChart1=[[LineChartView alloc]initWithFrame:CGRectMake(0, 300, self.view.bounds.size.width, 300)];
    
    lineChart1.dataSource=self;
    
    [self.view addSubview:lineChart1];
}

-(NSInteger)numberForChart:(LineChartView *)chart
{
    return _points.count;
}
-(float)chart:(LineChartView *)chart valueAtIndex:(NSInteger)index
{
    
    return [[_points objectAtIndex:index] floatValue];
}
-(NSString *)chart:(LineChartView *)chart titleForXLabelAtIndex:(NSInteger)index
{
    return [NSString stringWithFormat:@"%ld",index];
}
-(BOOL)chart:(LineChartView *)chart backGroundColorAtXPointIndex:(NSInteger)index
{
    if (index==2) {
        return true;
    }
    else
    {
        return false;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
