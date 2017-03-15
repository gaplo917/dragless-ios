//
//  MainViewController.swift
//  DraglessDemo
//
//  Created by Lo Yue Hei on 14/3/2017.
//  Copyright (c) 2017 gaplotech. All rights reserved.
//

import DraglessUIKit
import RxCocoa
import RxSwift

class MainViewController: UIViewController, TypedViewControllerType {
    struct Launcher: DetailViewControllerLaunching {}

    typealias ViewType = MainView

    let disposeBag = DisposeBag()

    required init(){
        super.init(nibName: nil, bundle: nil)
        title = "Main"
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
        let launcher = Launcher()

        // use typedView
        typedView.myLabel.text = "This is a sample text!"

        typedView.firstButton.rx.tap.subscribe(onNext:{ [unowned self] in
            print("First button clicked")
            launcher.pushDetailViewController(to: self.navigationController, dataFromParent: "Data From First Button")
        }).addDisposableTo(disposeBag)

        typedView.secondButton.rx.tap.subscribe(onNext:{ [unowned self] in
            print("second button clicked")
            launcher.pushDetailViewController(to: self.navigationController, dataFromParent: "Data From Second Button")
        }).addDisposableTo(disposeBag)
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }



}
