@import XCTest;

#import "Note.h"

#import "NSArray+HYPFind.h"

@interface Tests : XCTestCase

@end

@implementation Tests

- (void)testObjectWhereRemoteID {
    NSArray *array = [self notes];
    Note *note = [array objectWhereRemoteID:@2];
    XCTAssertEqual(note.remoteID, @2);
}

- (void)testObjectWhereAttribute {
    NSArray *array = [self notes];
    Note *note = [array objectWhereAttribute:@"remoteID" isEqualTo:@2];
    XCTAssertEqual(note.remoteID, @2);
}

- (void)testisNullAtIndex {
    NSArray *array = @[@1, [NSNull null], @3];
    XCTAssertFalse([array isNullAtIndex:0]);
    XCTAssertTrue([array isNullAtIndex:1]);
    XCTAssertFalse([array isNullAtIndex:2]);
}

#pragma mark - Helpers

- (NSArray *)notes {
    NSMutableArray *notes = [NSMutableArray new];

    for (int i = 0; i < 10; ++i) {
        Note *note = [Note new];
        note.remoteID = @(i);
        [notes addObject:note];
    }

    return notes;
}

@end
