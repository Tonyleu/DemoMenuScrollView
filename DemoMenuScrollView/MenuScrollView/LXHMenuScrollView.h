
#import <UIKit/UIKit.h>
#import "LXHMenuScrollViewCell.h"
#import "Logo.h"

NS_ASSUME_NONNULL_BEGIN

@interface LXHMenuScrollView : UIView<UICollectionViewDataSource,UICollectionViewDelegateFlowLayout,UICollectionViewDelegate>

@property (nonatomic,strong) UICollectionView * myCollectionView; //菜单视图
@property(strong ,nonatomic) NSArray * imageArray; //LogoName数组

- (id)initWithFrame:(CGRect)frame :(NSArray*)array;
@end

NS_ASSUME_NONNULL_END
