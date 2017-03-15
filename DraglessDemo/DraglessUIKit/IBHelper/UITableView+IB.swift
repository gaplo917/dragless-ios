//
// Created by Lo Yue Hei on 15/3/2017.
// Copyright (c) 2017 gaplotech. All rights reserved.
//

import Foundation
import UIKit
import RxSwift

extension UITableView {
    // default for preview table view cell
    func prepareForInterfaceBuilder<T: UITableViewCell>(type: T.Type){
        _ = Observable.just([1,2,3,4,5,6,7,8,10]).bindTo(self.rx.items){ tv, row, item in
            let cell = tv.dequeueReusableTypedCell(type)!
            cell.prepareForInterfaceBuilder()
            return cell
        }
    }
}