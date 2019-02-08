//
//  HomePresenter.swift
//  FlightSearch
//
//  Created by Victor Britto e Barros on 29/01/2019.
//  Copyright (c) 2019 Victor Britto e Barros. All rights reserved.
//
//

import UIKit

final class HomePresenter {
  
  // MARK: - Private properties  
  private weak var view: HomeViewInterface?
  private let wireframe: HomeWireframeInterface
  
  private let interactorSearch: FlightSearchInteractorProtocol
  
  // MARK: - Lifecycle
  init(wireframe: HomeWireframeInterface,
       view: HomeViewInterface,
       interactor: FlightSearchInteractorProtocol) {
    self.wireframe = wireframe
    self.view = view
    self.interactorSearch = interactor
  }
}

// MARK: - Extensions
extension HomePresenter: HomePresenterInterface {
  
  func search(iataSource: String, iataDestination: String, dateOfDeparture: String, dateOfArrival: String, countPeople: String) {
    
    if let departure = dateOfDeparture.date(withFormat: "dd/MM/yyyy"),
       let arrival = dateOfArrival.date(withFormat: "dd/MM/yyyy"),
       let adults = Int(countPeople) {
      
      let parameters = FlightSearch(JSON: ["source": iataSource,
                                          "destination": iataDestination,
                                          "dateofdeparture":  departure,
                                          "dateofarrival": arrival,
                                          "adults": adults])
      interactorSearch.search(parameters: parameters ?? FlightSearch())
    }
  }
}

extension HomePresenter: FlightSearchInteractorResponseProtocol {
  func responseSearchSuccess(_ response: String) {
    print(response)
  }
  
  func responseSearchError() {
    
  }
  
  
}
