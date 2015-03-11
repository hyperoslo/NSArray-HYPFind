@import Foundation;

@interface NSArray (HYPFind)

- (id)objectWhereRemoteID:(NSNumber *)remoteID;

- (id)objectWhereAttribute:(NSString *)attribute isEqualTo:(id)comparedAttribute;

@end
