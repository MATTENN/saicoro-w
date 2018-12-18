//
//  SecondViewController.swift
//  saicoro-w
//
//  Created by 友利 奈緒 on 2018/12/18.
//  Copyright © 2018年 MATTENN. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController,UITextFieldDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.field1.delegate = self
    }
    
    @IBOutlet weak var field1: UITextField!
    @IBOutlet weak var label1: UILabel!
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // キーボードを閉じる
        field1.resignFirstResponder()
        return true
    }
    
    let First = UIStoryboard(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "ViewController") as! ViewController
    
    @IBAction func reflect(_ sender: Any) {
        label1.text = field1.text!
        First.overwriteLabel(text: field1.text ?? "none")
        
    }
    
    @IBAction func reflectsecond(_ sender: Any) {
        label1.text = field1.text!
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        field1.resignFirstResponder()
    }
    
    

}
