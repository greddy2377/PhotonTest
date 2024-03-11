import XCTest
@testable import NYCSchoolsApp

final class DataVerificationTests: XCTestCase {
    
    func testData() {
        //Arrange
        let data = SchoolDataProcess()
        
        //Act
        let recievedData = data.dataVerification()
        
        //Assert
        XCTAssertEqual(recievedData, "Successfully retrieved data")
    }
    
}
