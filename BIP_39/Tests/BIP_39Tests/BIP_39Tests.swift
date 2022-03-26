import XCTest
@testable import BIP_39

final class BIP_39Tests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(BIP_39().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
