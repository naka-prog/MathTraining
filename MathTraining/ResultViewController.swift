//
//  ResultViewController.swift
//  MathTraining
//
//  Created by koji nakashima on 2020/12/27.
//

import UIKit

class ResultViewController: UIViewController {

    var result = 0.0
    
    @IBOutlet var resultLabel: UILabel!
    @IBOutlet var messageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        // 得点を表示する
        resultLabel.text = "\(round(result))%"
        if result < 50 {
            messageLabel.text = "PLEASE TRY AGAIN !"
        } else if result < 80 {
            messageLabel.text = "NICE !"
        } else {
            messageLabel.text = "YOU ARE GREAT !"
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
