//
//  FlightSearchTests.swift
//  FlightSearchTests
//
//  Created by Victor Britto e Barros on 29/01/19.
//  Copyright © 2019 Victor Britto e Barros. All rights reserved.
//

import XCTest
@testable import FlightSearch

extension FlightSearchApiModelAssembler {
  func resolveNoResults() -> FlightSearchApiModel {
    return FlightSearchApiModel(with: [])
  }
  func resolveBH() -> FlightSearchApiModel {
    return FlightSearchApiModel(with: [FlightSearchApiAddressModel(with: "ChIJiUIyZaGQpgARff0Fu8gdHXA", address: "Belo Horizonte - State of Minas Gerais, Brazil", locationLat: -19.9172987, locationLng: -43.9345593)])
  }
  func resolveMany() -> FlightSearchApiModel {
    return FlightSearchApiModel(with: [
      FlightSearchApiAddressModel(with: "1234", address: "B1", locationLat: 0.00, locationLng: 0.00),
      FlightSearchApiAddressModel(with: "1234", address: "B2", locationLat: 0.00, locationLng: 0.00),
      FlightSearchApiAddressModel(with: "1234", address: "B3", locationLat: 0.00, locationLng: 0.00)])
  }
}

class TestFlightSearchApiAssembler: FlightSearchApiModelAssembler { }

class FlightSearchApiTests: XCTestCase {
  
  override func setUp() {
    super.setUp()
  }
  
  override func tearDown() {
    super.tearDown()
  }
  
  func testNoAddress() {
    getSome(with: "", sensor: "", success: { response in
      if let map = response as? FlightSearchApiModel {
        if map.numOfAddresses() > 0 {
          XCTAssert(false)
        } else {
          XCTAssert(true)
        }
      }
    }) { error in
      XCTAssert(false)
    }
  }
  
  func testSpecificAddress() {
    getSome(with: "Belo Horizonte", sensor: "", success: { response in
      if let map = response as? FlightSearchApiModel {
        if let address = map.getAddresses().first {
          if address.getId() == "ChIJiUIyZaGQpgARff0Fu8gdHXA" {
            XCTAssert(true)
          } else {
            XCTAssert(false)
          }
        }
      }
    }) { error in
      XCTAssert(false)
    }
  }
  
  func testManyAddresses() {
    getSome(with: "B", sensor: "", success: { response in
      if let map = response as? FlightSearchApiModel {
        if map.numOfAddresses() > 0 {
          XCTAssert(true)
        } else {
          XCTAssert(false)
        }
      }
    }) { error in
      XCTAssert(false)
    }
  }
  
  func testFailure() {
    getSome(with: "*", sensor: "", success: { response in
      if let map = response as? FlightSearchApiModel {
        if map.numOfAddresses() > 0 {
          XCTAssert(false)
        } else {
          XCTAssert(false)
        }
      }
    }) { error in
      XCTAssert(true)
    }
  }
}

extension FlightSearchApiTests: FlightSearchApiProtocol {
  func getSome(with address: String, sensor: String, success: @escaping BaseSuccessCallback, failure: @escaping BaseFailureCallback) {
    let testAssembler: FlightSearchApiModelAssembler = TestFlightSearchApiAssembler()
    switch address {
    case "":
      success(testAssembler.resolveNoResults() as AnyObject)
    case "Belo Horizonte":
      success(testAssembler.resolveBH() as AnyObject)
    case "B":
      success(testAssembler.resolveMany() as AnyObject)
    default:
      failure(nil)
    }
  }
}
