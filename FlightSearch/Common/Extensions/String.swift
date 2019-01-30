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
}
