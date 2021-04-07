import XCTest
@testable import PlurEmAll

final class CardinalityTests: XCTestCase {
    
    func test_cardinality_of_0_is_none() {
        XCTAssertEqual(Cardinality(from: 0), .none)
    }
    
    func test_cardinality_of_1_is_single() {
        XCTAssertEqual(Cardinality(from: 1), .single)
        XCTAssertEqual(Cardinality(from: -1), .single)
    }
    
    func test_cardinality_of_2_is_multiple() {
        XCTAssertEqual(Cardinality(from: 2), .multiple)
        XCTAssertEqual(Cardinality(from: -2), .multiple)
    }
    
}
    
final class PlurifyTests: XCTestCase {
    
    func test_plurify_term_with_0_count_to_none_form() {
        XCTAssertEqual("term".plurify(with: 0), "no terms")
    }
    
    func test_plurify_term_with_1_count_to_singular_form() {
        XCTAssertEqual("term".plurify(with: 1), "a term")
    }
    
    func test_plurify_term_with_2_count_to_multiple_form() {
        XCTAssertEqual("term".plurify(with: 2), "2 terms")
    }
    
    func test_plurify_term_with_none_cardinality_count_to_none_form() {
        XCTAssertEqual("term".plurify(with: .none), "no terms")
    }
    
    func test_plurify_term_with_single_cardinality_to_singular_form() {
        XCTAssertEqual("term".plurify(with: .single), "a term")
    }
    
    func test_plurify_term_with_multiple_cardinality_count_to_multiple_form() {
        XCTAssertEqual("term".plurify(with: .multiple), "terms")
    }
    
    func test_plurify_apple_with_single_cardinality_to_singular_form() {
        XCTAssertEqual("apple".plurify(with: .single), "an apple")
    }
    
}
