//
//  DateHelper.swift
//  FlightSearch
//
//  Created by Victor Britto e Barros on 08/02/2019.
//  Copyright © 2019 Victor Britto e Barros. All rights reserved.
//

import Foundation

import Foundation

struct DateHelper {
  
  static func stringFromDate(_ date: Date, format: String) -> String {
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = format
    dateFormatter.locale = Locale(identifier: "pt_BR")
    
    return dateFormatter.string(from: date)
  }
  
  static func dateFromString(_ string: String, format: String) -> Date? {
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = format
    dateFormatter.locale = Locale(identifier: "pt_BR")
    
    guard let date = dateFormatter.date(from: string) else { return nil }
    
    return date
  }
  
}
