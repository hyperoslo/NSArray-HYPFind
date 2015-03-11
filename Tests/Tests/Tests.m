@import XCTest;

#import "Note.h"

#import "NSArray+HYPFind.h"

@interface Tests : XCTestCase

@end

@implementation Tests

- (void)testFindObjectWithRemoteID
{
    NSArray *array = [self notes];
    Note *note = [array objectWhereRemoteID:@2];
    XCTAssertEqual(note.remoteID, @2);
}

#pragma mark - Helpers

- (NSArray *)notes
{
    NSMutableArray *notes = [NSMutableArray new];

    for (int i = 0; i < 10; ++i) {
        Note *note = [Note new];
        note.remoteID = @(i);
        note.note = [NSString stringWithFormat:@"None %d", i];
        [notes addObject:note];
    }

    return notes;
}

@end
