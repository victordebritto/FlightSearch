//
//  FlightSearchInteractor.swift
//  FlightSearch
//
//  Created by Victor Britto e Barros on 03/02/2019.
//  Copyright © 2019 Victor Britto e Barros. All rights reserved.
//

import Foundation

final class FlightSearchInteractor: InteractorInterface {
  
  weak var response: FlightSearchInteractorResponseProtocol?
  var provider: FlightSearchApiProtocol
  
  init(provider: FlightSearchApiProtocol) {
    self.provider = provider
  }
}

extension FlightSearchInteractor: FlightSearchInteractorProtocol {
  func search(parameters: FlightSearch) {
    provider.getSome(params: parameters.toJSON(), success: {response in }, failure: {error in })
  }
}
