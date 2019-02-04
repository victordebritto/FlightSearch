//
//  FlightSearchInteractorProtocol.swift
//  FlightSearch
//
//  Created by Victor Britto e Barros on 03/02/2019.
//  Copyright © 2019 Victor Britto e Barros. All rights reserved.
//

import Foundation

protocol FlightSearchInteractorProtocol: InteractorInterface {
  func search(parameters: FlightSearch)
}

protocol FlightSearchInteractorResponseProtocol: class {
  func responseSearchSuccess(_ response: String)
  func responseSearchError()
}
