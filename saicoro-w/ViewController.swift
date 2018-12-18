//
//  ViewController.swift
//  saicoro-w
//
//  Created by 友利 奈緒 on 2018/12/18.
//  Copyright © 2018年 MATTENN. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBOutlet weak var label1: UILabel!
    
    @IBAction func unwindToTop(segue: UIStoryboardSegue){
        //Second View Controllerから元に戻れるやつ
    }
    
    func overwriteLabel(text: String){
        label1.text = text
    }
}

