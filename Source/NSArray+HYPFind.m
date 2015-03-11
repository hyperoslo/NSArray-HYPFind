#import "NSArray+HYPFind.h"

@implementation NSArray (HYPFind)

- (id)findObjectWithRemoteID:(NSInteger)remoteID
{
    return [self findObjectWithID:remoteID attribute:@"remoteID"];
}

- (id)findObjectWithID:(NSInteger)objectID attribute:(NSString *)attribute
{
    return [[self filteredArrayUsingPredicate:[NSPredicate predicateWithFormat:@"%K == %d", attribute, objectID]] firstObject];
}

@end
