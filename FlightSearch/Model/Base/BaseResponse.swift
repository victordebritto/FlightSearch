//
//  BaseResponse.swift
//  FlightSearch
//
//  Created by Victor Britto e Barros on 29/01/19.
//  Copyright © 2019 Victor Britto e Barros. All rights reserved.
//

import Foundation

protocol BaseResponseProtocol {
  static func fillWithDictionary<T>(_ variable: inout T, key: String, dictionary: [String : AnyObject])
}

extension BaseResponseProtocol {
  static func fillWithDictionary<T>(_ variable: inout T, key: String, dictionary: [String : AnyObject]) {
    if let tempField = dictionary[key] as? T {
      variable = tempField
    }
  }
  
  static func dictionaryContent(with key: String, _ dict: [String: AnyObject]) -> [String: AnyObject]? {
    if let resp = dict[key] as? [String: AnyObject] {
      return resp
    }
    return nil
  }
  
  static func arrayContent(with key: String, _ dict: [String: AnyObject]) -> [[String: AnyObject]]? {
    if let resp = dict[key] as? [[String: AnyObject]] {
      return resp
    }
    return nil
  }
}
