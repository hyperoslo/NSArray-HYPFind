@import Foundation;

@interface NSArray (HYPFind)

- (id)findObjectWithRemoteID:(NSInteger)remoteID;
- (id)findObjectWithID:(NSInteger)objectID attribute:(NSString *)attribute;

@end
