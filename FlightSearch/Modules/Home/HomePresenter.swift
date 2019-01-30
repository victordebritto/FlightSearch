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
  
  // MARK: - Lifecycle
  init(wireframe: HomeWireframeInterface,
       view: HomeViewInterface) {
    self.wireframe = wireframe
    self.view = view
  }
}

// MARK: - Extensions
extension HomePresenter: HomePresenterInterface { }
