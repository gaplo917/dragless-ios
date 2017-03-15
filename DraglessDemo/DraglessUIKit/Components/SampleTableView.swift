//
// Created by Lo Yue Hei on 15/3/2017.
// Copyright (c) 2017 gaplotech. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa

public class SampleTableView: UITableView {
    public typealias CellType = SampleTableViewCell

    let disposeBag = DisposeBag()
    var shouldDeselectRow = true

    public override init (frame : CGRect, style: UITableViewStyle) {
        super.init(frame : frame, style: style)
        self.registerTypedCell(CellType.self)
    }

    public required init?(coder aDecoder: NSCoder) {
        fatalError("This class does not support NSCoding")
    }
}