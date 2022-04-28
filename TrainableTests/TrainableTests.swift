//
//  TrainableTests.swift
//  TrainableTests
//
//  Created by Kristoffer Baumgarten on 28/04/2022.
//

import XCTest
@testable import Trainable

class TrainableTests: XCTestCase {
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    // Test takes the imageUrl on an exercises and checkes if it can make an async call on it to see if it can find it.
    func AsyncImage() async throws {
        
        // Get url link from Exercise
        let url = URL(string: ExerciseModel.sampleData[0].imageUrl)!
        
        // Use an asynchronous function to download the webpage
        let dataAndResponse: (data: Data, respone: URLResponse) = try await
        URLSession.shared.data(from: url, delegate: nil)
        
        // Assert that the actual response matches the expected response
        let httpResonse = try XCTUnwrap(dataAndResponse.respone as? HTTPURLResponse, " Expected an HTTPURLResponse.")
        
        XCTAssertEqual(httpResonse.statusCode, 200, "Expected a 200 OK respone.")
        
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }

}
