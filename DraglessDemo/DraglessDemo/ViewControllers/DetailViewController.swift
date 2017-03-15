//
// Created by Lo Yue Hei on 15/3/2017.
// Copyright (c) 2017 gaplotech. All rights reserved.
//

import Foundation
import DraglessUIKit
import RxCocoa
import RxSwift

protocol DetailViewControllerLaunching {
    func pushDetailViewController(to nvc: UINavigationController?, dataFromParent: String)
}

extension DetailViewControllerLaunching {
    func pushDetailViewController(to nvc: UINavigationController?, dataFromParent: String){
        let vc = DetailViewController(dataFromParent: dataFromParent)
        nvc?.pushViewController(vc, animated: true)
    }
}
class DetailViewController: UIViewController, TypedViewControllerType {
    typealias ViewType = DetailView

    let dataFromParent: String

    required init(dataFromParent: String){
        self.dataFromParent = dataFromParent

        super.init(nibName: nil, bundle: nil)

        title = "Detail"
    }

    override func loadView() {
        super.loadView()
        view = createTypedView()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("Not support to init here")
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // use typedView
        typedView.setData(data: dataFromParent)
    }

}
