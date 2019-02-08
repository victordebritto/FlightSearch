//
//  ResultPresenter.swift
//  FlightSearch
//
//  Created by Victor Britto e Barroson 08/02/2019.
//  Copyright (c) 2019 Victor Britto e Barros. All rights reserved.
//
//  This file was generated by the 🐍 VIPERbr generator.
//

import UIKit

final class ResultPresenter {
  
  // MARK: - Private properties  
  private weak var view: ResultViewInterface?
  private let wireframe: ResultWireframeInterface
  
  // MARK: - Lifecycle
  init(wireframe: ResultWireframeInterface,
       view: ResultViewInterface) {
    self.wireframe = wireframe
    self.view = view
  }
}

// MARK: - Extensions
extension ResultPresenter: ResultPresenterInterface { }

//extension ResultPresenter: ResultInteractorResponseProtocol {
//  func responseResultInteractorResponseSuccess(response: ResultModel) {
//    print(response)
//  }
//
//  func responseResultInteractorResponseError() { }
//}
