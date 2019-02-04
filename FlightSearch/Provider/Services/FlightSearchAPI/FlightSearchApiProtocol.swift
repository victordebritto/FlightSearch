//
//  FlightSearchApiProtocol.swift
//  FlightSearch
//
//  Created by Victor Britto e Barros on 29/01/19.
//  Copyright © 2019 Victor Britto e Barros. All rights reserved.
//

import Foundation

protocol FlightSearchApiProtocol {
  func getSome(params: [String: Any],
               success: @escaping BaseSuccessCallback,
               failure: @escaping BaseFailureCallback)
}
