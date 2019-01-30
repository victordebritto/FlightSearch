//
//  AppDelegate.swift
//  FlightSearch
//
//  Created by Victor Britto e Barros on 29/01/19.
//  Copyright © 2019 Victor Britto e Barros. All rights reserved.
//

import Foundation

protocol PresenterInterface: class {
  
  func viewDidLoad()
  func viewWillAppear(animated: Bool)
  func viewDidAppear(animated: Bool)
  func viewWillDisappear(animated: Bool)
  func viewDidDisappear(animated: Bool)
  
}

extension PresenterInterface {
  
  func viewDidLoad() {
    fatalError("Implementation pending...")
  }
  
  func viewWillAppear(animated: Bool) {
    fatalError("Implementation pending...")
  }
  
  func viewDidAppear(animated: Bool) {
    fatalError("Implementation pending...")
  }
  
  func viewWillDisappear(animated: Bool) {
    fatalError("Implementation pending...")
  }
  
  func viewDidDisappear(animated: Bool) {
    fatalError("Implementation pending...")
  }
}
