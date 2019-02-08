//
//  FlightSearchApiProvider.swift
//  FlightSearch
//
//  Created by Victor Britto e Barros on 29/01/19.
//  Copyright © 2019 Victor Britto e Barros. All rights reserved.
//

import Foundation
import Alamofire
import ObjectMapper
import AlamofireObjectMapper

enum FlightSearchApiProvider {
  
  // MARK: - Cases
  case search
  
  // MARK: - Path
  private var endPoint: String {
    switch self {
    case .search:
      return "/search"
    }
  }
  
  // MARK: - Methods
  private var method: HTTPMethod {
    switch self {
    case .search:
      return .get
    }
  }
  
  fileprivate static let kURL = "http://developer.goibibo.com/api%@"
  
}

// MARK: - Extensions
extension FlightSearchApiProvider: FlightSearchApiProtocol {
  func getSome(params: [String: Any], success: @escaping flightSearchCallback, failure: @escaping BaseFailureCallback) {
    
    let completeEndPoint = FlightSearchApiProvider.kURL.format(endPoint)
    let url = completeEndPoint.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) ?? ""
    let urlString = URL(string: url)
    if let url = urlString {
      Alamofire
        .request(url, method: .get, parameters: params)
        .responseObject(completionHandler: { (response: DataResponse<ResultSearch>) in
          if let err = response.result.value?.data?.error {
            let objError = NSError(domain: "api", code: 200, userInfo: [NSLocalizedDescriptionKey : err])
            failure(objError)
          } else {
            success(response.result.value?.data?.onwardFlights ?? [])
          }
        })
    }
  }
  
  
}
