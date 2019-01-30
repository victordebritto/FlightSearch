//
//  FlightSearchApiProvider.swift
//  FlightSearch
//
//  Created by Victor Britto e Barros on 29/01/19.
//  Copyright © 2019 Victor Britto e Barros. All rights reserved.
//

import Foundation

enum FlightSearchApiProvider {
  
  // MARK: - Cases
  case FlightSearchApi
  
  // MARK: - Path
  private var path: String {
    switch self {
    case .FlightSearchApi:
      return "site.com/api/xpto?query"
    }
  }
  
  // MARK: - Methods
  private var method: HTTPMethod {
    switch self {
    case .FlightSearchApi:
      return .get
    }
  }
  
}

// MARK: - Extensions
extension FlightSearchApiProvider: FlightSearchApiProtocol {
  func getSome(with address: String, sensor: String, success: @escaping BaseSuccessCallback, failure: @escaping BaseFailureCallback) {
    
    let completePath = String(format: path, address, sensor)
    
    BaseProvider().request(method: method, endPoint: completePath, params: nil, successBlock: { response in      
      success(response)
    }) { error in
      failure(error)
    }
  }
  
  
}
