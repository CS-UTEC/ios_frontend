//
//  ViewController.swift
//  iOS
//
//  Created by Andrea Diaz ♡ on 3/21/20.
//  Copyright © 2020 COVID19-UTEC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    func UIColorFromRGB(rgbValue: UInt) -> UIColor {
        return UIColor(
            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
            alpha: CGFloat(1.0)
        )
    }
    
    let login = LoginView(frame: CGRect.zero)
     
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Login"
        self.view.backgroundColor = UIColorFromRGB(rgbValue: 0xbd0f17)
        self.view.addSubview(self.login)
        
        // AutoLayout
        login.autoPinEdgesToSuperviewEdges(with: UIEdgeInsets.zero)
        self.view.layoutIfNeeded()
    }
}

