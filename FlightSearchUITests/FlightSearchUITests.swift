//
//  FlightSearchUITests.swift
//  FlightSearchUITests
//
//  Created by Victor Britto e Barros on 29/01/19.
//  Copyright © 2019 Victor Britto e Barros. All rights reserved.
//

import XCTest

class FlightSearchUITests: MainUITests {
  
  func testNoResult() {
    sendKeySearchBar(id: "home_search_bar_element", text: "Belo Horizonte")
    searchButton()
  }
  
}
