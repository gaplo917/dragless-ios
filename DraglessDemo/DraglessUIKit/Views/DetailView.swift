//
// Created by Lo Yue Hei on 15/3/2017.
// Copyright (c) 2017 gaplotech. All rights reserved.
//

import Foundation

import UIKit
import SnapKit

@IBDesignable
public class DetailView: UIView {

    let dataLabel: UILabel = {
       let v = UILabel()
        return v
    }()

    let customStyleButton: CustomStyleButton

    let tableView: SampleTableView

    public override required init (frame : CGRect) {

        customStyleButton = {
            let v = CustomStyleButton(type: .system)
            v.setTitle("Custom Style Button", for: .normal)
            return v
        }()

        tableView = SampleTableView(frame: frame, style: .plain)

        super.init(frame : frame)

        backgroundColor = UIColor.white

        addSubview(dataLabel)
        addSubview(customStyleButton)
        addSubview(tableView)

        dataLabel.snp.makeConstraints { maker in
            maker.top.equalTo(self).offset(100)
            maker.centerX.equalTo(self)
        }

        customStyleButton.snp.makeConstraints { maker in
            maker.top.equalTo(dataLabel.snp.bottom).offset(40)
            maker.width.equalTo(200)
            maker.centerX.equalTo(self)
        }
        tableView.snp.makeConstraints { maker in
            maker.top.equalTo(customStyleButton.snp.bottom).offset(20)
            maker.left.equalTo(self)
            maker.right.equalTo(self)
            maker.bottom.equalTo(self)
        }

    }

    public required init(coder aDecoder: NSCoder) {
        fatalError("This class does not support NSCoding")
    }

    public override func prepareForInterfaceBuilder() {
        self.prepareForInterfaceBuilderWithBorder()

        dataLabel.text = "Data From Parent"
        customStyleButton.setTitle("Custom Style Button From IB", for: .normal)
        tableView.prepareForInterfaceBuilder(type: SampleTableViewCell.self)
        // for preview only, useful when add dynamic content here, like table view cell
    }

    public func setData(data: String){
        dataLabel.text = data
    }

}

