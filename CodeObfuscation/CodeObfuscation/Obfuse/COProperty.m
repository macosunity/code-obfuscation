//
//  COProperty.m
//  CodeObfuscation
//
//  Created by hejunqiu on 2017/5/25.
//  Copyright © 2017年 CHE. All rights reserved.
//

#import "COProperty.h"

@interface COProperty ()

@property (nonatomic, strong) NSString *name;
@property (nonatomic) NSRange location;

@end

@implementation COProperty

+ (instancetype)propertyWithName:(NSString *)name location:(NSRange)location
{
    COProperty *obj = [COProperty new];
    obj.name = name;
    obj.location = location;
    return obj;
}

- (NSString *)description
{
    return self.name;
}

- (NSString *)debugDescription
{
    NSString *str = [NSString stringWithFormat:@"(%@, %@)", _name, NSStringFromRange(_location)];
    return str;
}

- (NSString *)oriname
{
    return _name;
}
@end
