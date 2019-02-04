//
//  HomeInterfaces.swift
//  FlightSearch
//
//  Created by Victor Britto e Barroson 29/01/2019.
//  Copyright (c) 2019 Victor Britto e Barros. All rights reserved.
//
//

import UIKit

enum HomeNavigationOption { }

protocol HomeWireframeInterface: WireframeInterface {
  func navigate(to option: HomeNavigationOption)
}

protocol HomeViewInterface: ViewInterface { }

protocol HomePresenterInterface: PresenterInterface {
  func search(iataSource: String, iataDestination: String, dateOfDeparture: String, dateOfArrival: String, countPeople: String)
}
