import XCTest
@testable import UserDefaultsWrapper

final class UserDefaultsWrapperTests: XCTestCase {
    
    @UserDefaultsStored(Example.self) private var example
    
    func testExample() throws {
        XCTAssertEqual(Example.defaultValue, example)
        
        let newString = "Testing123"
        example = newString
        
        XCTAssertEqual(example, newString)
    }
}

struct Example: UserDefaultsKey {
    static var defaultValue = "sampleValue"
    static var key = "exampleKey"
}
