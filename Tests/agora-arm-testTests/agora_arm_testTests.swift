import XCTest
@testable import agora_arm_test

final class agora_arm_testTests: XCTestCase {
  func testExample() throws {
    let testItem = agora_arm_test()
    XCTAssertEqual(testItem.isInitialised, true)
  }
}
