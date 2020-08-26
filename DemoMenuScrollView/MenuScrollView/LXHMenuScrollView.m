
#import "LXHMenuScrollView.h"

#define WIDTH  self.frame.size.width
#define HEIGHT self.frame.size.height

@implementation LXHMenuScrollView

- (id)initWithFrame:(CGRect)frame :(NSArray*)array;
{
    self = [super initWithFrame:frame];
    if (self) {
        self.imageArray = array;
        [self createCollectionView];
    }
    return self;
}

- (void)createCollectionView {
    UICollectionViewFlowLayout * flowLayout = [[UICollectionViewFlowLayout alloc] init];
    flowLayout.minimumLineSpacing = 0;
    flowLayout.minimumInteritemSpacing = 0;
    flowLayout.itemSize = CGSizeMake((WIDTH)/4.0, (WIDTH)/4.0);
    
    self.myCollectionView = [[UICollectionView alloc] initWithFrame:CGRectMake(0, 0, WIDTH, HEIGHT) collectionViewLayout:flowLayout];
    self.myCollectionView.delegate = self;
    self.myCollectionView.dataSource = self;
    self.myCollectionView.backgroundColor = [UIColor whiteColor];
    [self.myCollectionView registerClass:[LXHMenuScrollViewCell class] forCellWithReuseIdentifier:@"cell"];
    self.myCollectionView.showsVerticalScrollIndicator = NO;
    self.myCollectionView.showsHorizontalScrollIndicator = NO;
    
    [self addSubview:self.myCollectionView];
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.imageArray.count;
    
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    static NSString * identifyStr = @"cell";
    LXHMenuScrollViewCell * cell = [collectionView dequeueReusableCellWithReuseIdentifier:identifyStr forIndexPath:indexPath];
    
    [cell sizeToFit];
    
    if (!cell) {
        NSLog(@"没有生成自定义 UICollectionViewCell ");
    }

    // 选项图标 修改plist文件可以改变选项条目
    Logo *logo = self.imageArray[indexPath.row];
    // NSLog(@"%@",logo.icon);
    cell.imgView.image = [UIImage imageNamed:logo.icon];
    // 选项名称
    cell.textView.text = logo.name;
    cell.textView.font = [[UIFont alloc] fontWithSize:14.0];
    cell.textView.textAlignment = NSTextAlignmentCenter;
    
    return cell;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    // 点击Item事件
    Logo *logo = self.imageArray[indexPath.row];
    NSLog(@"选择了 %@ 功能。",logo.name);
    
    [self.myCollectionView reloadData];
}

- (BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}

@end
