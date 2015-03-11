@import Foundation;

@interface NSArray (HypFinder)

- (id)findObjectWithRemoteID:(NSInteger)remoteID;
- (id)findObjectWithID:(NSInteger)objectId attribute:(NSString *)attribute;

@end
