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
    
    @IBAction func unwindToTop(segue: UIStoryboardSegue, sender: Any?){
        //Second View Controllerから元に戻れるやつ
        //if let second = segue.destination as? SecondViewController {
        //    second.first = self
        //}
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if let second = segue.destination as? SecondViewController {
            second.first = self
        }
    }
    
    func overwriteLabel(text: String){
        label1.text = text
    }
}

