//
//  FSTextField.swift
//  FlightSearch
//
//  Created by Victor Britto e Barros on 30/01/2019.
//  Copyright © 2019 Victor Britto e Barros. All rights reserved.
//

import UIKit

@IBDesignable
class FSTextField: UITextField {

  @IBInspectable var icon: UIImage? {
    didSet {
      //self.rightView
    }
  }
  
  func setImage() {
    if let img = icon {
      self.rightViewMode = .always
      
      let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 20, height: 20))
      imageView.image = img
      
      rightView = imageView
    } else {
      rightViewMode = .never
      
    }
  }

}
