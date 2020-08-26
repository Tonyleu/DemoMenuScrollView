//
//  ViewController.m
//  DemoMenuScrollView
//
//  Created by tony on 2020/8/26.
//  Copyright © 2020 tony. All rights reserved.
//

#import "ViewController.h"
#import "LXHMenuScrollView.h"

@interface ViewController ()

@property(nonatomic, strong) NSArray *imageNameArray;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self initData];
    [self createMenuScroolView];
}

- (void)createMenuScroolView {
    LXHMenuScrollView *MSV = [[LXHMenuScrollView alloc]initWithFrame:CGRectMake(0, 520, self.view.frame.size.width, 300) :self.imageNameArray];

    [self.view addSubview:MSV];
}

#pragma mark === 初始化数据初始化
- (void)initData
{
    if (_imageNameArray == nil) {
            // 读取plist文件的方法
            NSString *path = [[NSBundle mainBundle] pathForResource:@"Logo.plist" ofType:nil];
            NSArray *array = [NSArray arrayWithContentsOfFile:path];
            NSMutableArray *root = [NSMutableArray array];

            if (array == nil) {
                NSLog(@"array is nil");
            }else{
                NSLog(@"array is not nil");
                for (NSDictionary *dict in array) {
                    Logo *logo = [Logo logoWithDict:dict];
                    [root addObject:logo];
                }
                _imageNameArray = root;
            }
    }
}


@end
