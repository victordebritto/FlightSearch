//
//  FlightSearchAPIInteractor.swift
//  FlightSearch
//
//  Created by Victor Britto e Barros on 29/01/19.
//  Copyright © 2019 Victor Britto e Barros. All rights reserved.
//

import Foundation

final class FlightSearchAPIInteractor: InteractorInterface {
  
  weak var response: FlightSearchApiInteractorResponseProtocol?
  var provider: FlightSearchApiProtocol
  
  init(provider: FlightSearchApiProtocol) {
    self.provider = provider
  }
}

extension FlightSearchAPIInteractor: FlightSearchApiInteractorProtocol {
  func getSome(_ address: String, _ sensor: String) {
    guard let resp = response else {
      return
    }
    provider.getSome(with: address, sensor: sensor, success: { data in
      if let result = data as? Data {
        resp.responsegetSomeSuccess(FlightSearchApiModel.parse(with: result))
      }
    }) { error in
      print(error as AnyObject)
      resp.responsegetSomeError()
    }
  }
}
