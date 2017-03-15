//
// Created by Lo Yue Hei on 14/3/2017.
// Copyright (c) 2017 gaplotech. All rights reserved.
//

import UIKit

protocol TypedViewControllerType {
    associatedtype ViewType: UIView

    weak var view: UIView! { get set }

    var typedView: ViewType { get }

    func createTypedView() -> ViewType
}

extension TypedViewControllerType {
    var typedView: ViewType {
        guard let v = self.view as? ViewType else {
            fatalError("\(type(of: self.view)) not matched. This should never happen.")
        }
        return v
    }

    func createTypedView() -> ViewType {
        return ViewType.self(frame: view.frame)
    }
}
