//
//  ViewController.swift
//  Gacha
//
//  Created by 瀬川太朗 on 2022/05/07.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func gacha() {
        performSegue(withIdentifier: "result", sender: nil)
    }


}

