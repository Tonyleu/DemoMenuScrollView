## DemoMenuScrollView 效果图
![title 效果图](http://code.cocoachina.com/uploads/attachments/20200828/1000587/5868a8fd0fd1b4cb71c29f959b5062ee.gif)
## 操作
将MenuScrollView文件夹和plist文件拉入工程，在需要用到的地方引入头文件即可。在plist文件内是菜单的图标和名称，可以根据需要自行修改。
## 例子
```Objective-c
@property(nonatomic, strong) NSArray *imageNameArray;

if (self.imageNameArray == nil) {
    // 读取plist文件的方法
    NSString *path = [[NSBundle mainBundle] pathForResource:@"plist文件名.plist" ofType:nil];
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
	self.imageNameArray = root;
    }
}

LXHMenuScrollView *MSV = [[LXHMenuScrollView alloc]initWithFrame
				:CGRectMake(0, 520, self.view.frame.size.width, 300) 
				:self.imageNameArray];
```
