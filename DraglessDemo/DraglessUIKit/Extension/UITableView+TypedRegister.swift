//
// Created by Lo Yue Hei on 15/3/2017.
// Copyright (c) 2017 gaplotech. All rights reserved.
//

import Foundation
import UIKit

extension UITableView {
    func registerTypedCell(_ cellClass: Swift.AnyClass) {
        self.register(cellClass, forCellReuseIdentifier: "\(cellClass)")
    }

    func registerTypedHeaderFooterCell(_ headerFooterClass: Swift.AnyClass){
        self.register(headerFooterClass, forHeaderFooterViewReuseIdentifier: "\(headerFooterClass)")
    }

    func dequeueReusableTypedCell<T>(_ cellClass: T.Type) -> T? {
        return self.dequeueReusableCell(withIdentifier: "\(cellClass)") as? T
    }

    func dequeueReusableTypedCell<T>(_ cellClass: T.Type, for: IndexPath) -> T? {
        return self.dequeueReusableCell(withIdentifier: "\(cellClass)",for: `for`) as? T
    }

    func dequeueReusableTypedHeaderFooterCell<T>(_ headerFooterClass: T.Type) -> T? {
        return self.dequeueReusableHeaderFooterView(withIdentifier: "\(headerFooterClass)") as? T
    }
}
