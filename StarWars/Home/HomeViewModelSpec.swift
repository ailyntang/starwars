
import XCTest
@testable import StarWars

class HomeViewModelTests: XCTestCase {
  func testTitle() {
    let viewModel = HomeViewModel()
    XCTAssertEqual(viewModel.title, "Star Wars")
  }
}
