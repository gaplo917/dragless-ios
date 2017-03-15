//
// Created by Lo Yue Hei on 14/3/2017.
// Copyright (c) 2017 gaplotech. All rights reserved.
//

import UIKit
import SnapKit

@IBDesignable
public class MainView: UIView {

    public let myLabel: UILabel = {
       let v = UILabel()
        v.textColor = UIColor.black
        return v
    }()

    public let firstButton: UIButton = {
        let v = UIButton(type: UIButtonType.system)
        v.setTitle("Go Detail! 1", for: .normal)
        return v
    }()

    public let secondButton: UIButton = {
        let v = UIButton(type: UIButtonType.system)
        v.setTitle("Go Detail! 2", for: .normal)
        return v
    }()

    public override required init (frame : CGRect) {
        super.init(frame : frame)

        addSubview(myLabel)
        addSubview(firstButton)
        addSubview(secondButton)

        myLabel.snp.makeConstraints { maker in
            maker.centerX.equalTo(self)
            maker.centerY.equalTo(self).dividedBy(2)
        }

        firstButton.snp.makeConstraints { maker in
            maker.left.equalTo(self).inset(10)
            maker.top.equalTo(myLabel.snp.bottom).offset(40)
            maker.height.equalTo(40)
        }

        secondButton.snp.makeConstraints { maker in
            maker.left.equalTo(firstButton.snp.right).inset(10)
            maker.right.equalTo(self).inset(10)
            maker.top.equalTo(myLabel.snp.bottom).offset(40)
            maker.height.equalTo(40)
            maker.width.equalTo(firstButton.snp.width)
        }
    }

    public required init(coder aDecoder: NSCoder) {
        fatalError("This class does not support NSCoding")
    }

    public override func prepareForInterfaceBuilder() {
        self.prepareForInterfaceBuilderWithBorder()

        myLabel.text = "hello world from IB12312"
        firstButton.setTitle("Go Detail! 1", for: .normal)
        secondButton.setTitle("Go Detail! 2", for: .normal)
        // for preview only, useful when add dynamic content here, like table view cell
    }

}
