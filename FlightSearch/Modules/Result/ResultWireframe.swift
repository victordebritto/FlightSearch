//
//  ResultWireframe.swift
//  FlightSearch
//
//  Created by Zup IT on 08/02/2019.
//  Copyright (c) 2019 Victor Britto e Barros. All rights reserved.
//
//

import UIKit

final class ResultWireframe: BaseWireframe {
  
  // MARK: - Private properties
  private let moduleViewController = ResultViewController(nibName: nil, bundle: nil)
  
  // MARK: - Module setup
  func configureModule(with viewController: ResultViewController) {        
    
    let presenter = ResultPresenter(wireframe: self, view: viewController)
    viewController.presenter = presenter
  }
  
  // MARK: - Transitions
  func show(with transition: Transition, animated: Bool = true) {
    configureModule(with: moduleViewController)    
    show(moduleViewController, with: transition, animated: animated)
  }
  
  // MARK: - Private Routing

}

// MARK: - Extensions
extension ResultWireframe: ResultWireframeInterface {
  
  func navigate(to option: ResultNavigationOption) {
    // switch option {
    // case <#pattern#>:
    //   <#code#>      
    // }
  }
}
