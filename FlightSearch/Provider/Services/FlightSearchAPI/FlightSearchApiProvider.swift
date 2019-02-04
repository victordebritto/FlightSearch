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
  
}

// MARK: - Extensions
extension FlightSearchApiProvider: FlightSearchApiProtocol {
  func getSome(params: [String: Any], success: @escaping BaseSuccessCallback, failure: @escaping BaseFailureCallback) {
    
    BaseProvider().request(method: method, endPoint: endPoint, params: params, successBlock: { response in
      success(response)
    }) { error in
      failure(error)
    }
  }
  
  
}
