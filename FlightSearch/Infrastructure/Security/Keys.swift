//
//  Keys.swift
//  FlightSearch
//
//  Created by Victor Britto e Barros on 03/02/2019.
//  Copyright © 2019 Victor Britto e Barros. All rights reserved.
//

import Foundation


struct Keys {
  static let appKey: String = getPlistValue(key: "app_key")
  static let appId: String = getPlistValue(key: "app_id")
  
  private static func getPlistValue (key: String) -> String {
    if let dictionary = Bundle.main.infoDictionary, let endpoint = dictionary[key] {
      guard let value = endpoint as? String else {
        return ""
      }
      return value
    } else {
      fatalError("Couldn't find \(key)")
    }
  }
}


