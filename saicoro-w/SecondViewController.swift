//
//  SecondViewController.swift
//  saicoro-w
//
//  Created by 友利 奈緒 on 2018/12/18.
//  Copyright © 2018年 MATTENN. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController,UITextFieldDelegate {

    @IBOutlet weak var field1: UITextField!
    @IBOutlet weak var label1: UILabel!
    
    weak var first: ViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.field1.delegate = self
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // キーボードを閉じる
        field1.resignFirstResponder()
        return true
    }
    
    @IBAction func reflect(_ sender: Any) {
        label1.text = field1.text!
        first?.overwriteLabel(text: field1.text ?? "none")
    }
    
    @IBAction func reflectsecond(_ sender: Any) {
        label1.text = field1.text!
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        field1.resignFirstResponder()
    }
    
    @IBAction func dismiss(_ sender: Any) {
        self.dismiss(animated: true,completion: nil)
    }

}
