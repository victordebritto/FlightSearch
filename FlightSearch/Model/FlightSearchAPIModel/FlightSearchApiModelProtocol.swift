//
//  FlightSearchApiModelProtocol.swift
//  FlightSearch
//
//  Created by Victor Britto e Barros on 29/01/19.
//  Copyright © 2019 Victor Britto e Barros. All rights reserved.
//

import Foundation

protocol FlightSearchApiModelAssembler {
  func resolve() -> FlightSearchApiModel
}

extension FlightSearchApiModelAssembler {
  func resolve() -> FlightSearchApiModel {
    return FlightSearchApiModel(with: [])
  }
}

protocol FlightSearchApiAddressModelAssembler {
  func resolve() -> FlightSearchApiAddressModel
}

extension FlightSearchApiAddressModelAssembler {
  func resolve() -> FlightSearchApiAddressModel {
    return FlightSearchApiAddressModel(with: "", address: "", locationLat: 0.0, locationLng: 0.0)
  }
}

class FlightSearchApiAssembler: FlightSearchApiAddressModelAssembler, FlightSearchApiModelAssembler { }
