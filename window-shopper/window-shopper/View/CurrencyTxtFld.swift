//
//  CurrencyTxtFld.swift
//  window-shopper
//
//  Created by Jess Leivers on 16/08/2017.
//  Copyright © 2017 Sarah Jessica London. All rights reserved.
//

import UIKit

@IBDesignable
class CurrencyTxtFld: UITextField {
    
    override func draw(_ rect: CGRect) {
        let size: CGFloat = 20
        let currencyLbl = UILabel(frame: CGRect(x: 5, y: (frame.size.height / 2) - size / 2, width: size, height: size))
        currencyLbl.backgroundColor = #colorLiteral(red: 0.4635888925, green: 0.4635888925, blue: 0.4635888925, alpha: 1)
        currencyLbl.textAlignment = .center
        currencyLbl.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        currencyLbl.layer.cornerRadius = 5.0
        currencyLbl.clipsToBounds = true
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = Locale.autoupdatingCurrent
        currencyLbl.text = formatter.currencySymbol
        addSubview(currencyLbl)
    }
    
    override func prepareForInterfaceBuilder() {
        customizeView()
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        customizeView()
    }
    
    func customizeView() {
        
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.25)
        layer.cornerRadius = 5.0
        textAlignment = .center
        clipsToBounds = true
        
        if let p = placeholder {
            let place = NSAttributedString(string: p, attributes: [.foregroundColor: UIColor.white])
            
            attributedPlaceholder = place
            textColor  = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
        
    }

}
