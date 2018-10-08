//
//  ViewController.m
//  CustomSlider
//
//  Created by DOUBLEQ on 2018/9/20.
//  Copyright © 2018年 DOUBLE Q. All rights reserved.
//

#import "ViewController.h"
#import "MyCustomSlider.h"
#import "Masonry.h"
@interface ViewController ()<SliderViewDelegate>
@property (nonatomic, strong)MyCustomSlider *slider;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor grayColor];
    [self.view addSubview:self.slider];
    [self.slider mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.view);
        make.centerX.equalTo(self.view);
        make.width.mas_equalTo(30);
        make.height.mas_equalTo(200);
    }];
}

- (MyCustomSlider *)slider {
    if (!_slider) {
        _slider = [[MyCustomSlider alloc] initWithFrame:CGRectMake(0, 0, 5, 150)];
        [_slider setThumbImage:[UIImage imageNamed:@"cm2_fm_playbar_btn"] forState:UIControlStateNormal];
        [_slider setThumbImage:[UIImage imageNamed:@"cm2_fm_playbar_btn"] forState:UIControlStateSelected];
        [_slider setThumbImage:[UIImage imageNamed:@"cm2_fm_playbar_btn"] forState:UIControlStateHighlighted];

        _slider.sliderBtn.delegate = self;
    }
    return _slider;
}

- (void)sliderValueChanged:(float)value{
    NSLog(@"456");

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


@end
