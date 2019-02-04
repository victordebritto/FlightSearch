//
//  String.swift
//  FlightSearch
//
//  Created by Victor Britto e Barros on 29/01/19.
//  Copyright © 2019 Victor Britto e Barros. All rights reserved.
//

import Foundation

extension String {
  func format(_ obj: Any) -> String {
    let str = String(format: self, arguments: [String(describing: obj)])
    return str
  }
  
  /// SwifterSwift: Date object from string of date format.
  ///
  ///    "2017-01-15".date(withFormat: "yyyy-MM-dd") -> Date set to Jan 15, 2017
  ///    "not date string".date(withFormat: "yyyy-MM-dd") -> nil
  ///
  /// - Parameter format: date format.
  /// - Returns: Date object from string (if applicable).
  public func date(withFormat format: String? = "yyyy-MM-dd") -> Date? {
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = format
    return dateFormatter.date(from: self)
  }
  
  func applyingDigitMask(_ mask: String) -> String {
    let digits = removingDigitMask()
    var masked = ""
    var digitIndex = 0, maskIndex = 0
    while maskIndex < mask.count && digitIndex < digits.count {
      var char = mask[mask.index(mask.startIndex, offsetBy: maskIndex)]
      if char == "#" {
        char = digits[digits.index(digits.startIndex, offsetBy: digitIndex)]
        digitIndex += 1
      }
      masked.append(char)
      maskIndex += 1
    }
    
    return masked
  }
  
  func removingDigitMask() -> String {
    return replacingOccurrences( of:"\\D", with: "", options: .regularExpression)
  }
}
