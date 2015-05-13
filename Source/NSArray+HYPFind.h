@import Foundation;

@interface NSArray (HYPFind)
/**
 *  Find object with RemoteID attrbute in the array
 *
 *  @param remoteID - NSString or NSNumber
 *  @return object with remoteID or nil if not found
 */
- (id)objectWhereRemoteID:(id)remoteID;

- (id)objectWhereAttribute:(NSString *)attribute isEqualTo:(id)comparedAttribute;

- (BOOL)isNullAtIndex:(NSInteger)index;
@end
