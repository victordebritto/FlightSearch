//
//  FlightResult.swift
//  FlightSearch
//
//  Created by Victor Britto e Barros on 08/02/2019.
//  Copyright © 2019 Victor Britto e Barros. All rights reserved.
//

import Foundation
import ObjectMapper

class FlightResult: Mappable {
  
  required init?(map: Map) {
  }
  
  var data: FlightList?
  var lenght: Int?

  func mapping(map: Map) {
    data <- map["data"]
    lenght <- map["data_length"]
  }
}

class FlightList: Mappable {
  
  var returnFlights: [Flight]?
  var onwardFlights: [Flight]?
  var error: String?
  
  required init?(map: Map) {
    
  }
  
  func mapping(map: Map) {
    returnFlights <- map["returnflights"]
    onwardFlights <- map["onwardflights"]
    error <- map["Error"]
  }
  
}
