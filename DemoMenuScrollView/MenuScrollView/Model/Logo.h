
#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Logo : NSObject
@property(copy, nonatomic)NSString *name;
@property(copy, nonatomic)NSString *icon;

- (instancetype)initWithDict:(NSDictionary *)dict;
+ (instancetype)logoWithDict:(NSDictionary *)dict;
@end

NS_ASSUME_NONNULL_END
