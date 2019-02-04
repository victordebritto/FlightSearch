//
//  HomeWireframe.swift
//  FlightSearch
//
//  Created by Victor Britto e Barros on 29/01/2019.
//  Copyright (c) 2019 Victor Britto e Barros. All rights reserved.
//
//

import UIKit

final class HomeWireframe: BaseWireframe {
  
  // MARK: - Private properties
  private let moduleViewController = HomeViewController(nibName: nil, bundle: nil)
  
  // MARK: - Module setup
  func configureModule(with viewController: HomeViewController) {
    
    let interactor = FlightSearchInteractor(provider: FlightSearchApiProvider.search)
    let presenter = HomePresenter(wireframe: self, view: viewController, interactor: interactor)
    
    interactor.response = presenter
    viewController.presenter = presenter
  }
  
  // MARK: - Transitions
  func show(with transition: Transition, animated: Bool = true) {
    configureModule(with: moduleViewController)    
    show(moduleViewController, with: transition, animated: animated)
  }
  // MARK: - Private Routin
}

// MARK: - Extensions
extension HomeWireframe: HomeWireframeInterface {
  
  func navigate(to option: HomeNavigationOption) {
    // switch option {
    // case <#pattern#>:
    //   <#code#>      
    // }
  }
}
