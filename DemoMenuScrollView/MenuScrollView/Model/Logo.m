
#import "Logo.h"

@implementation Logo
- (instancetype)initWithDict:(NSDictionary *)dict {
    if (self = [super init]) {
        self.name = dict[@"name"];
        self.icon = dict[@"icon"];
    }
    return self;
}

+ (instancetype)logoWithDict:(NSDictionary *)dict {
    return [[self alloc]initWithDict:dict];
}
@end
