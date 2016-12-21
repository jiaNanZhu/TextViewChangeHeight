//
//  ViewController.m
//  TextFieldHeightChange
//
//  Created by 朱佳男 on 2016/12/21.
//  Copyright © 2016年 ShangYuKeJi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITextViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.view addSubview:self.textView];
    // Do any additional setup after loading the view, typically from a nib.
}
-(UITextView *)textView{
    if (!_textView) {
        
        _textView=[[UITextView alloc]initWithFrame:CGRectMake(30, 200, CGRectGetWidth([[UIScreen mainScreen] bounds])-60, 30)];
        [_textView setTextColor:[UIColor redColor]];
        [_textView.layer setBorderColor:[[UIColor blackColor] CGColor]];
        [_textView setFont:[UIFont systemFontOfSize:15]];
        [_textView.layer setBorderWidth:1.0f];
        [_textView setDelegate:self];
    }
    return _textView;
}
-(void)textViewDidChange:(UITextView *)textView{
    
    static CGFloat maxHeight =60.0f;
    CGRect frame = textView.frame;
    CGSize constraintSize = CGSizeMake(frame.size.width, MAXFLOAT);
    CGSize size = [textView sizeThatFits:constraintSize];
    if (size.height<=frame.size.height) {
        size.height=size.height;
    }else{
        if (size.height >= maxHeight)
        {
            size.height = maxHeight;
            textView.scrollEnabled = YES;   // 允许滚动
        }
        else
        {
            textView.scrollEnabled = NO;    // 不允许滚动
        }
    }
    textView.frame = CGRectMake(frame.origin.x, frame.origin.y, frame.size.width, size.height);
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
