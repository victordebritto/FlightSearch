//
//  Fare.swift
//  airtickets
//
//  Created by Paulo Rodrigues on 29/12/17.
//  Copyright © 2017 MaxMilhas. All rights reserved.
//

import Foundation
import ObjectMapper

class Fare: Mappable {
  required init?(map: Map) {
  }
  var totalFare: Double?
  
  func mapping(map: Map) {
      totalFare <- map["totalfare"]
  }
}
