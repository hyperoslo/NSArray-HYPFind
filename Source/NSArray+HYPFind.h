@import Foundation;

@interface NSArray (HYPFind)

- (id)findObjectWithRemoteID:(NSInteger)remoteID;
- (id)findObjectWithID:(NSInteger)objectId attribute:(NSString *)attribute;

@end
