//
//  FlightSearch.swift
//  FlightSearch
//
//  Created by Victor Britto e Barros on 03/02/2019.
//  Copyright © 2019 Victor Britto e Barros. All rights reserved.
//

import Foundation

struct FlightSearch {
  
  var app_id: String { return Keys.appId }
  var app_key: String { return Keys.appKey }
  var format: String { return "json" }
  
  var source: String = ""
  var destination: String = ""
  
  var dateofdeparture: Date = Date()
  var dateofarrival: Date = Date()
  
  var seatingclass: String { return "E" }
  var adults: Int = 0
  var children: Int { return 0 }
  var infants: Int { return 0 }
  var counter: Int { return 0 }
  
  var dictionary: [String: Any] {
    return ["app_id": app_id,
            "app_key": app_key,
            "format": format,
            "source": source,
            "destination": destination,
            "dateofdeparture": dateofdeparture,
            "dateofarrival": dateofarrival,
            "seatingclass": seatingclass,
            "adults": adults,
            "children": children,
            "infants": infants,
            "counter": counter]
  }
  
}
