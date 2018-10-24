//
//  ViewController.m
//  JustDoit
//
//  Created by jack young on 2018/9/26.
//  Copyright © 2018年 jack young. All rights reserved.
//

#import "ViewController.h"
#import "DeviceModelUtil.h"

@interface ViewController ()

@property (nonatomic, strong) UITextField *textField;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UITapGestureRecognizer *tapGes = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(taped:)];
    [self.view addGestureRecognizer:tapGes];
    
    struct utsname systemInfo;
    uname(&systemInfo);
//    NSString *deviceModel = [NSString stringWithCString:systemInfo.machine encoding:NSUTF8StringEncoding];
    
//    NSString *deviceModel = [NSString deviceModelName];

    
    NSString* phoneVersion = [[UIDevice currentDevice] systemVersion];
    
    NSString * iponeM = [[UIDevice currentDevice] systemName];
    
//    NSString*button_title = [NSString stringWithFormat:@"%@,%@,%@",phoneVersion,iponeM,deviceModel];
//    CGRect frame = CGRectMake(0, 0, 100, 200);
//    UIButton *button = [[UIButton alloc] initWithFrame:frame];
//    [button setBackgroundColor:[UIColor redColor]];
//    [button setTitle:button_title forState:UIControlStateNormal];
//    [self.view addSubview:button];
    
    //获取屏幕大小
    UIScreen *s = [UIScreen mainScreen];
    //获取屏幕边界
    CGRect bounds = s.bounds;
    //获取屏幕的高度
    float height = bounds.size.height;
    float width = bounds.size.width;
    
    
    CGRect titleframe = CGRectMake(0, 0, width*1, height*0.12);
    UILabel *titlelabel = [[UILabel alloc] initWithFrame:titleframe];
    titlelabel.text =[NSString stringWithFormat:@"测试机管理"];
    titlelabel.textAlignment = NSTextAlignmentCenter;
//    titleframe.origin.x = (bounds.size.width - titleframe.size.width)*0.5;
    titleframe.origin.y = (bounds.size.height - titleframe.size.height)*0.5;
//    [titlelabel setBackgroundColor:[UIColor grayColor]];
    [titlelabel setBackgroundColor:[UIColor colorWithRed:133.0/255 green:133.0/255 blue:133.0/255 alpha:1]];
    [self.view addSubview:titlelabel];
    
    CGRect iponeMframe = CGRectMake(30, 150, 250, 50);
    UILabel *iponeMlabel = [[UILabel alloc] initWithFrame:iponeMframe];
    iponeMlabel.text =[NSString stringWithFormat:@"品牌：%@",iponeM];
    iponeMlabel.textAlignment = NSTextAlignmentLeft;
    [self.view addSubview:iponeMlabel];
    
    CGRect phoneVersionframe = CGRectMake(30, 200, 250, 50);
    UILabel *phoneVersionlabel = [[UILabel alloc] initWithFrame:phoneVersionframe];
    phoneVersionlabel.text = [NSString stringWithFormat:@"系统：%@",phoneVersion];
    phoneVersionlabel.textAlignment = NSTextAlignmentLeft;
    [self.view addSubview:phoneVersionlabel];

    
    CGRect deviceVersionframe = CGRectMake(30, 250, 200, 50);
    UILabel *deviceVersionlabel = [[UILabel alloc] initWithFrame:deviceVersionframe];
    deviceVersionlabel.text = [NSString stringWithFormat:@"机型：%@",[DeviceModelUtil deviceModelName]];
    deviceVersionlabel.textAlignment = NSTextAlignmentLeft;
    [self.view addSubview:deviceVersionlabel];
    
    NSString *uuid = [UIDevice currentDevice].identifierForVendor.UUIDString;
    CGRect uuidframe = CGRectMake(30, 300, 300, 50);
    UILabel *uuidlabel = [[UILabel alloc] initWithFrame:uuidframe];
    uuidlabel.numberOfLines = 0;
    uuidlabel.text = [NSString stringWithFormat:@"UUID：%@",uuid];
    uuidlabel.textAlignment = NSTextAlignmentLeft;
    [self.view addSubview:uuidlabel];
    
    CGRect text1frame = CGRectMake(100, 400, 200, 50);
    UITextField *text1Field =  [[UITextField alloc] initWithFrame:text1frame];
    text1Field.placeholder = [NSString stringWithFormat:@"邮箱前缀"];
    text1Field.borderStyle = UITextBorderStyleRoundedRect;
    text1Field.textAlignment = NSTextAlignmentLeft;
    self.textField = text1Field;
    [self.view addSubview:text1Field];
}

- (void)taped:(UITapGestureRecognizer *)tapGes
{
    if (self.textField.isFirstResponder) {
        [self.textField resignFirstResponder];
    }
}

@end
