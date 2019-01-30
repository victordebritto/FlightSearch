//
//  LightNavigationBarTheme.swift
//  FlightSearch
//
//  Created by Victor Britto e Barros on 29/01/2019.
//  Copyright © 2019 Victor Britto e Barros. All rights reserved.
//

import Foundation
import UIKit

enum IconBackButton {
  case leftArrow
  case close

  var image: UIImage {
    switch self {
    case .leftArrow: return UIImage(named: "btn_leftArrowWhite")!
    case .close: return UIImage(named: "Icons_BS2_Medium_Limpar_Turquoise")!
    }
  }
}

protocol LightNavigationBarTheme: StatusBarTheme, Themeable { }

extension LightNavigationBarTheme {
  
  var navigationStatusBarStyle: UIStatusBarStyle? {
    return .lightContent
  }
}

extension LightNavigationBarTheme {
  
  var iconBackButton: IconBackButton {
    return .leftArrow
  }
  
  var navigationBarBackgroundColor: UIColor {
    return UIColor.white
  }
  
  var navigationBarTintColor: UIColor {
    return UIColor.clear
  }
  
  var navigationTitleTextAttributes: [NSAttributedStringKey: Any] {
    let font = UIFont.preferredFont(forTextStyle: .headline)
    return [.foregroundColor: UIColor.clear, .font: font]
  }
  
  var navigationBarStyle: UIBarStyle {
    return .default
  }
  
  var navigationBarTranslucent: Bool {
    return true
  }
}
