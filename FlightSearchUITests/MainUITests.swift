//
//  MainUITests.swift
//  FlightSearchUITests
//
//  Created by Victor Britto e Barros on 29/01/19.
//  Copyright © 2019 Victor Britto e Barros. All rights reserved.
//

import XCTest
import Foundation

class MainUITests: XCTestCase {
  
  // MARK: - Setup
  let app = XCUIApplication()
  let elementQuery = XCUIApplication().scrollViews.otherElements
  
  override func setUp() {
    super.setUp()
    continueAfterFailure = false
    XCUIApplication().launch()
  }
  
  override func tearDown() {
    super.tearDown()
  }
  
}
