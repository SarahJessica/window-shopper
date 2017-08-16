//
//  ViewController.swift
//  window-shopper
//
//  Created by Jess Leivers on 16/08/2017.
//  Copyright © 2017 Sarah Jessica London. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    @IBOutlet weak var hourlyWageTxtFld: CurrencyTxtFld!
    @IBOutlet weak var priceTxtFld: CurrencyTxtFld!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calcBtn.backgroundColor = #colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1)
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcBtn.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        
        hourlyWageTxtFld.inputAccessoryView = calcBtn
        priceTxtFld.inputAccessoryView = calcBtn
    }
    
    @objc
    func calculate() {
        print("calculation called")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

