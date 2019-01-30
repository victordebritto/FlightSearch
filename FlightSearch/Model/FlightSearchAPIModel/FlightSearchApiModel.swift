//
//  FlightSearchApiModel.swift
//  FlightSearch
//
//  Created by Victor Britto e Barros on 29/01/19.
//  Copyright © 2019 Victor Britto e Barros. All rights reserved.
//

import Foundation

struct FlightSearchApiModel: BaseResponseProtocol {
  
  // MARK: - Properties
  private var addresses: [FlightSearchApiAddressModel]
  
  init(with addresses: [FlightSearchApiAddressModel]) {
    self.addresses = addresses
  }
  
  private enum FlightSearchKey {
    static let kResults = "results"
  }
  
  static func parse(with data: Data) -> FlightSearchApiModel {
    let assembler: FlightSearchApiModelAssembler = FlightSearchApiAssembler()
    var map: FlightSearchApiModel = assembler.resolve()
    
    let json = try? JSONSerialization.jsonObject(with: data, options: [])
    if let dict = json as? [String : AnyObject] {
      if let results = arrayContent(with: FlightSearchKey.kResults, dict) {
        for dict in results {
          map.addresses.append(FlightSearchApiAddressModel.parse(with: dict))
        }
      }
    }
    return map
  }
  
  // MARK: - Class Funcs
  
  func numOfAddresses() -> Int {
    return addresses.count
  }
  
  func getAddresses() -> [FlightSearchApiAddressModel] {
    return addresses
  }
  
  func getAddress(for index: Int) -> FlightSearchApiAddressModel {
    if addresses.count > index {
      return addresses[index]
    }
    let assembler: FlightSearchApiAddressModelAssembler = FlightSearchApiAssembler()
    return assembler.resolve()
  }
  
}

struct FlightSearchApiAddressModel: BaseResponseProtocol {
  
  // MARK: - Properties
  private var id: String
  private var address: String
  private var locationLat: Double
  private var locationLng: Double
  
  init(with id: String, address: String, locationLat: Double, locationLng: Double) {
    self.id = id
    self.address = address
    self.locationLat = locationLat
    self.locationLng = locationLng
  }
  
  // MARK: - Key
  private enum FlightSearchKey {
    static let kResults = "results"
    static let kFormattedAddress = "formatted_address"
    static let kGeometry = "geometry"
    static let kLocation = "location"
    static let kLat = "lat"
    static let kLng = "lng"
    static let id = "place_id"
  }
  
  static func parse(with dict: [String: AnyObject]) -> FlightSearchApiAddressModel {
    let assembler: FlightSearchApiAddressModelAssembler = FlightSearchApiAssembler()
    var address: FlightSearchApiAddressModel = assembler.resolve()
    fillWithDictionary(&address.id, key: FlightSearchKey.id, dictionary: dict)
    fillWithDictionary(&address.address, key: FlightSearchKey.kFormattedAddress, dictionary: dict)
    if let geo = dictionaryContent(with: FlightSearchKey.kGeometry, dict) {
      if let location = dictionaryContent(with: FlightSearchKey.kLocation, geo) {
        fillWithDictionary(&address.locationLat, key: FlightSearchKey.kLat, dictionary: location)
        fillWithDictionary(&address.locationLng, key: FlightSearchKey.kLng, dictionary: location)
      }
    }
    return address
  }
  
  // MARK: - Class Funcs
  func getAddressName() -> String {
    return self.address
  }
  
  func getLat() -> Double {
    return self.locationLat
  }
  
  func getLng() -> Double {
    return self.locationLng
  }
  
  func getId() -> String {
    return self.id
  }
  
}
