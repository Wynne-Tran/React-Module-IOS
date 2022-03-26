import XCTest

import BIP_39Tests

var tests = [XCTestCaseEntry]()
tests += BIP_39Tests.allTests()
XCTMain(tests)
