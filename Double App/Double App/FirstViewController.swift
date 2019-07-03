//
//  FirstViewController.swift
//  Double App
//
//  Created by student on 7/3/19.
//  Copyright © 2019 student. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    @IBOutlet weak var Age: UITextField!
    @IBAction func text(_ sender: Any) {
        let ageResult2:Int = Int(Age.text!)! * 7
        ageResult.text = String(ageResult2)
        
    }
    @IBOutlet weak var ageResult: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

