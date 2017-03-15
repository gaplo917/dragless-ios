//
//  DragHellLabel.swift
//  DragHellDemo
//
//  Created by Lo Yue Hei on 15/3/2017.
//  Copyright © 2017 Lo Yue Hei. All rights reserved.
//

import UIKit

class DragHellLabel : UILabel {
    override init(frame: CGRect) {
        super.init(frame: frame)
        textColor = UIColor.blue
        text = "from code"
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        textColor = UIColor.red
        text = "from nib"
    }

}
