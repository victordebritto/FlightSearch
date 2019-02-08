//
//  ResultInterfaces.swift
//  FlightSearch
//
//  Created by Zup IT on 08/02/2019.
//  Copyright (c) 2019 Victor Britto e Barros. All rights reserved.
//
//

import UIKit

enum ResultNavigationOption { }

protocol ResultWireframeInterface: WireframeInterface {
  func navigate(to option: ResultNavigationOption)
}

protocol ResultViewInterface: ViewInterface { }

protocol ResultPresenterInterface: PresenterInterface { }
