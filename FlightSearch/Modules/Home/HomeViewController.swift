//
//  HomeViewController.swift
//  FlightSearch
//
//  Created by Victor Britto e Barros on 29/01/2019.
//  Copyright (c) 2019 Victor Britto e Barros. All rights reserved.
//

import UIKit

final class HomeViewController: UIViewController {
  
  // MARK: - Outlets
  
  // MARK: - Class properties
  
  // MARK: - Public properties  
  var presenter: HomePresenterInterface!
  
  // MARK: - Life Cycle
  override func viewDidLoad() {
    super.viewDidLoad()
    self.viewConfiguration()
  }
  
  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    self.navigationController?.setNavigationBarHidden(true, animated: animated)
    
  }
  
  override func viewWillDisappear(_ animated: Bool) {
    super.viewWillDisappear(animated)
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  // MARK: - Init Deinit
  required convenience init() {
    self.init(nibName: nil, bundle: nil)
  }
  
  deinit { }
  
  // MARK: - Class Configurations  
  private func viewConfiguration() {
    
  }
  
  // MARK: - Class Methods
  
  // MARK: - UIActions
  
}

// MARK: - Extensions
extension HomeViewController: HomeViewInterface { }
