//
//  ViewController.swift
//  DragHellDemo
//
//  Created by Lo Yue Hei on 15/3/2017.
//  Copyright © 2017 Lo Yue Hei. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet var myLabel: UILabel!
    
    
    @IBOutlet var goDetailOne: UIButton!
    
    @IBOutlet var secondButton: UIButton!
    
    @IBOutlet var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        myLabel.text = "This text is from viewcontroller"
        
        goDetailOne.setTitle("Go Detail! 1", for: .normal)
        secondButton.setTitle("Go Detail! 2", for: .normal)
    }

    @IBAction func buttonDidTap(_ sender: Any) {
        myLabel.text = "Button did tap"
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier {
        case .some("fromFirstButton"):
            let viewController = segue.destination as! DetailViewController
            viewController.dataFromParent = "Data From First Button"
            
        case .some("fromSecondButton"):
            let viewController = segue.destination as! DetailViewController
            viewController.dataFromParent = "Data From Second Button"
            
        default:
            break
        }
    }
    
    @IBAction func customStyleDidTap(_ sender: Any) {
        let alert = UIAlertController(
            title: nil,
            message: "Custom Style Button Did Tap",
            preferredStyle: UIAlertControllerStyle.alert
        )
        
        alert.addAction(
            UIAlertAction(
                title: "OK",
                style: UIAlertActionStyle.default,
                handler: nil
            )
        )
        
        self.present(alert, animated: true, completion: nil)
        
    }
}

