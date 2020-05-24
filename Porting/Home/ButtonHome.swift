//
//  ButtonHome.swift
//  Porting
//
//  Created by Victor Falcetta do Nascimento on 23/05/20.
//  Copyright © 2020 Paula Leite. All rights reserved.
//

import UIKit

class ButtonHome: UIButton {
    override init(frame: CGRect) {
        super.init(frame: frame)
        createButton()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        createButton()
    }
    
    private func createButton() {
        self.layer.cornerRadius = 10
        self.layer.masksToBounds = true
        self.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        self.setTitleColor(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), for: .normal)
        self.backgroundColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
    }
}
