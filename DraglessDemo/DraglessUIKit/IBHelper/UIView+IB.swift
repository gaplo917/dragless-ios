//
// Created by Lo Yue Hei on 14/3/2017.
// Copyright (c) 2017 gaplotech. All rights reserved.
//

import Foundation
import UIKit
import SnapKit

fileprivate let colors = [UIColor.gray,UIColor.blue,UIColor.brown, UIColor.cyan, UIColor.green, UIColor.orange, UIColor.purple]

internal extension UIView {

    func prepareForInterfaceBuilderWithBorder(borderColor: UIColor = colors[Int(arc4random_uniform(UInt32(colors.count)))], withLabel: Bool = true){
        self.subviews.forEach { v in
            v.layer.borderColor = borderColor.cgColor
            v.layer.borderWidth = 1

            let randomNum:UInt32 = arc4random_uniform(UInt32(colors.count))

            let nextColor = colors[Int(randomNum)]


            if(v.subviews.count > 0 ) {
                if type(of:v) != UIView.self {
                    v.prepareForInterfaceBuilder()
                } else {
                    v.prepareForInterfaceBuilderWithBorder(borderColor: nextColor)
                }

            }

        }

        if(withLabel) {
            let label = UILabel()
            label.frame = CGRect(x:0,y:0, width: 100, height:100)
            label.text = "\(type(of: self))"
            label.font = label.font.withSize(9)
            //label.textAlignment = NSTextAlignment.center
            label.alpha = 0.2
            label.numberOfLines = 0
            self.addSubview(label)
            self.bringSubview(toFront: label)

            label.snp.makeConstraints { make in
                make.left.equalTo(3)
                make.top.equalTo(0)
                make.width.greaterThanOrEqualTo(50)
                make.width.lessThanOrEqualTo(self.snp.width)
                make.height.greaterThanOrEqualTo(20)

            }
        }

    }
}

fileprivate extension UIColor {
    var coreImageColor: CIColor {
        return CIColor(color: self)
    }
    var components: (red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat) {
        let color = coreImageColor
        return (color.red, color.green, color.blue, color.alpha)
    }
}
