#import "NSArray+HypFinder.h"

@implementation NSArray (HypFinder)

- (id)findObjectWithRemoteID:(NSInteger)remoteID
{
    return [self findObjectWithID:remoteID attribute:@"remoteID"];
}

- (id)findObjectWithID:(NSInteger)objectId attribute:(NSString *)attribute
{
    return [[self filteredArrayUsingPredicate:[NSPredicate predicateWithFormat:@"%K == %d", attribute, objectId]] firstObject];
}

@end
