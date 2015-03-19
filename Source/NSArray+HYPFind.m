#import "NSArray+HYPFind.h"

@implementation NSArray (HYPFind)

- (id)objectWhereRemoteID:(id)remoteID
{
    return [self objectWhereAttribute:@"remoteID" isEqualTo:remoteID];
}

- (id)objectWhereAttribute:(NSString *)attribute isEqualTo:(id)comparedAttribute;
{
    return [[self filteredArrayUsingPredicate:[NSPredicate predicateWithFormat:@"%K == %@", attribute, comparedAttribute]] firstObject];
}

@end
