//
//  TrainableUITests.swift
//  TrainableUITests
//
//  Created by Kristoffer Baumgarten on 28/04/2022.
//

import XCTest

class TrainableUITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func tap_on_Max_weight() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()
        
        // check if navigationbar exists
        let tabbar = app.tabBars.element
        XCTAssertTrue(tabbar.exists)
        // clicks on it
        app.tabBars.buttons["Food"].tap()
        app.tabBars.buttons["Log"].tap()
        
        // check if disclosureGroup with name "Abdominals" existes
        let bodyAreaGroup = app.buttons["Abdominals"]
        XCTAssertTrue(bodyAreaGroup.exists)
        // clicks on it
        app.buttons.buttons["Abdominals"].tap()
        
        
        // checks if "plank" in discloosureGroup "Abdominals" exists
        let exercise = app.staticTexts["Plank"]
        XCTAssertTrue(exercise.exists)
        
        XCUIApplication()/*@START_MENU_TOKEN@*/.scrollViews/*[[".otherElements[\"Log\"].scrollViews",".scrollViews"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.otherElements.buttons.containing(.staticText, identifier:"Plank").element.tap()
        
        app.textFields["Enter Max weight"].tap()
                        
    }
    
    func tap_into_strength() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()
        
        // check if Strength exists
        let StrengthBt = app.images["Strength"]
        XCTAssertTrue(StrengthBt.exists)
        // clicks on it
        app.images["Strength"].tap()
        
        let elementsQuery = XCUIApplication()/*@START_MENU_TOKEN@*/.scrollViews/*[[".otherElements[\"Exercises\"].scrollViews",".scrollViews"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.otherElements

        XCTAssert(app.staticTexts["Abdominals"].exists)
        elementsQuery.buttons["Abdominals"].tap()
        
    }
    
    

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}
