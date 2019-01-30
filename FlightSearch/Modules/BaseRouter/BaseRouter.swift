//
//  BaseRouter.swift
//  FlightSearch
//
//  Created by Victor Britto e Barros on 29/01/19.
//  Copyright © 2019 Victor Britto e Barros. All rights reserved.
//

import UIKit

final class BaseRouter {
  
  // MARK: - Properties
  let window: UIWindow
  let baseNavigationController: UINavigationController = UINavigationController()
  
  // MARK: - Init

  init(window: UIWindow) {
    self.window = window
    window.rootViewController = baseNavigationController
    window.backgroundColor = UIColor.white
    window.makeKeyAndVisible()
  }
  
  // MARK: - Router
  func initRouter() {    
    presentLogin()
  }
    
  // MARK: - Private Methods
  func presentLogin() {
    let loginModule = HomeWireframe(navigationController: baseNavigationController)
    loginModule.show(with: .root, animated: true)
  }
}
