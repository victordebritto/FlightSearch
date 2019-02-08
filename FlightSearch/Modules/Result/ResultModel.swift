//
//  ResultModel.swift
//  FlightSearch
//
//  Created by Zup IT on 08/02/2019.
//  Copyright (c) 2019 Victor Britto e Barros. All rights reserved.
//
//

import Foundation

struct ResultModel {
  
  // MARK: - Properties
  var data: String = ""
    
  private enum Keys {
    static let kData = "data"
  }
  
  // MARK: - Class Funcs
  static func parse(with dictionary: [String: AnyObject]) -> ResultModel {    
    var model = ResultModel()
    model.data = dictionary[Keys.kData] as? String ?? ""
    return model
  } 
}