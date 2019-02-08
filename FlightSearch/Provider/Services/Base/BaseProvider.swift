//
//  BaseProvider.swift
//  FlightSearch
//
//  Created by Victor Britto e Barros on 29/01/19.
//  Copyright © 2019 Victor Britto e Barros. All rights reserved.
//

import Foundation
import Alamofire
import ObjectMapper
import AlamofireObjectMapper

typealias BaseSuccessCallback = (_ data: AnyObject?) -> Swift.Void
typealias BaseFailureCallback = (_ error: Error?) -> Swift.Void

public enum HTTPMethod: String {
  case options = "OPTIONS"
  case get = "GET"
  case head = "HEAD"
  case post = "POST"
  case put = "PUT"
  case patch = "PATCH"
  case delete = "DELETE"
  case trace = "TRACE"
  case connect = "CONNECT"
}

internal class BaseProvider {
  
  private enum BaseProviderKeys {
    static let query = "query"
  }
  
  // MARK: Bureau
  fileprivate static let kURL = "http://developer.goibibo.com/api%@"
  
  // MARK: - Methods
  
  func request(method: HTTPMethod, endPoint: String, params: [String: Any]?, successBlock: @escaping BaseSuccessCallback, failureBlock: @escaping BaseFailureCallback) {
    
    let completeEndPoint = BaseProvider.kURL.format(endPoint)
    let url = completeEndPoint.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) ?? ""
    let urlString = URL(string: url)
    
    switch method {
    case .get:
      if let url = urlString {
        
        
        
        
        Alamofire.request(url, method: .get, parameters: params)
          .validate(statusCode: 200..<300)
          .validate(contentType: ["application/json"])
          .responseJSON { response in
            print(response)
          }
//          .response {resp in
//            print(resp)
//          }
      }
    case .post:
      NSLog("%@", "No Service POST")
    case .put:
      NSLog("%@", "No Service PUT")
    default:
      NSLog("%@", "Service error")
    }
  }
  
}
