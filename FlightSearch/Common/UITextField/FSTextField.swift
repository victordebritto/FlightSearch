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
  
  @IBInspectable public var digitMask: String?
  @IBInspectable var icon: UIImage? {
    didSet {
      setImage()
    }
  }
  @IBInspectable var cornerRadius: CGFloat = 0 {
    didSet {
      layer.cornerRadius = cornerRadius
    }
  }
  
  override public func layoutSubviews() {
    super.layoutSubviews()
    
    layer.borderColor = UIColor(red: 216, green: 220, blue: 222, alpha: 1.0).cgColor
    layer.borderWidth = 1.0
    layer.backgroundColor = UIColor.white.cgColor
    
    layer.masksToBounds = false;
    layer.shadowRadius  = 0.0;
    layer.shadowColor   = UIColor(red: 231, green: 233, blue: 234, alpha: 1.0).cgColor
    layer.shadowOffset  = CGSize(width: 2.0, height: 3.0);
    layer.shadowOpacity = 0.5;
  }
  
  public override var text: String? {
    didSet { self.textFieldTextChanged() }
  }
  
  override public init(frame: CGRect) {
    super.init(frame: frame)
    commonInit()
  }
  
  required public init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
    commonInit()
  }

  fileprivate func commonInit() {
    addTarget(self, action: #selector(textFieldTextChanged), for: .editingChanged)
  }
  
  private func setImage() {
    if let img = icon {
      self.rightViewMode = .always
      
      let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 20, height: 20))
      imageView.image = img
      imageView.contentMode = UIViewContentMode.scaleAspectFit
      
      
      let view = UIView(frame: CGRect(x: 0, y: 0, width: 30, height: 20 ))
      view.addSubview(imageView)
      
      rightView = view
    } else {
      rightViewMode = .never
    }
  }
  
  @objc public func textFieldTextChanged() {
   // bsTextDelegate?.textWithMaskChanged(text: text)
  //  if applyTextMaximumSize() || applyDigitMask() { return }
    if applyDigitMask() { return }
  }
  
  public func applyDigitMask() -> Bool {
    guard let digitMask = digitMask else {
      return false
    }
    let currentText = text ?? ""
    let maskedText = currentText.applyingDigitMask(digitMask)
    if currentText == maskedText {
      return false
    }
    text = maskedText
    return true
  }

}
