//
//  FSButton.swift
//  FlightSearch
//
//  Created by Zup IT on 03/02/2019.
//  Copyright © 2019 Victor Britto e Barros. All rights reserved.
//

import UIKit

class FSButton: UIButton {
  
  override func layoutSubviews() {
    super.layoutSubviews()
    if imageView != nil {
      imageEdgeInsets = UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 15)
    }
  }
}
