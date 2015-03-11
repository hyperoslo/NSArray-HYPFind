@import XCTest;
#import "Note.h"
#import "NSArray+HypFinder.h"

@interface Tests : XCTestCase

@end

@implementation Tests

- (void)setUp
{
    [super setUp];

    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.

    [super tearDown];
}

- (void)testFindObjectWithRemoteID
{
    NSArray *array = [self makeNotes];
    Note *note = [array findObjectWithRemoteID:2];
    XCTAssertEqual(note.remoteID, @(2));
}

#pragma mark - Helpers

- (NSArray *)makeNotes
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
