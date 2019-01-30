//
//  FlightSearchAPIInteractorProtocol.swift
//  FlightSearch
//
//  Created by Victor Britto e Barros on 29/01/19.
//  Copyright © 2019 Victor Britto e Barros. All rights reserved.
//

import Foundation

protocol FlightSearchApiInteractorProtocol: InteractorInterface {
  func getSome(_ address: String, _ sensor: String)
}

protocol FlightSearchApiInteractorResponseProtocol: class {
  func responsegetSomeSuccess(_ response: FlightSearchApiModel)
  func responsegetSomeError()
}
