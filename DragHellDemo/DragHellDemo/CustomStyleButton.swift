//
//  CustomStyleButton.swift
//  DragHellDemo
//
//  Created by Lo Yue Hei on 15/3/2017.
//  Copyright © 2017 Lo Yue Hei. All rights reserved.
//

import UIKit

class CustomStyleButton: UIButton {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initStyle()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initStyle()
    }

    func initStyle(){
        backgroundColor = UIColor.black
        tintColor = UIColor.white
        setTitleColor(UIColor.brown, for: .normal)
    }
    
}
