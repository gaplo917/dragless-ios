//
// Created by Lo Yue Hei on 15/3/2017.
// Copyright (c) 2017 gaplotech. All rights reserved.
//

import Foundation
import UIKit
import SnapKit

public class SampleTableViewCell: UITableViewCell {

    let test: UILabel = {
       let v = UILabel()
        v.textColor = UIColor.black
        return v
    }()

    public override init (style: UITableViewCellStyle, reuseIdentifier: String?){
        super.init(style: style, reuseIdentifier: reuseIdentifier)

        let bgColorView = UIView()
        bgColorView.backgroundColor = UIColor.red
        self.selectedBackgroundView = bgColorView

        addSubview(test)

        test.snp.makeConstraints { maker in
            maker.center.equalTo(self)
        }
    }

    public required init?(coder aDecoder: NSCoder) {
        fatalError("This class does not support NSCoding")
    }
    public override func prepareForInterfaceBuilder() {
        prepareForInterfaceBuilderWithBorder()
        test.text = "Sample 2 "
    }

}