//
// Created by Lo Yue Hei on 15/3/2017.
// Copyright (c) 2017 gaplotech. All rights reserved.
//

import Foundation

import UIKit
import SnapKit

@IBDesignable
public class CustomStyleButton: UIButton {

    public override required init (frame: CGRect) {
        super.init(frame: frame)

        backgroundColor = UIColor.black

        setTitleColor(UIColor.red, for: .normal)
    }

    public required init(coder aDecoder: NSCoder) {
        fatalError("This class does not support NSCoding")
    }

    public override func prepareForInterfaceBuilder() {
        self.prepareForInterfaceBuilderWithBorder()

        // for preview only, useful when add dynamic content here, like table view cell
    }

}
