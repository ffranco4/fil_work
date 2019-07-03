//
//  SecondViewController.swift
//  To Do List
//
//  Created by student on 7/2/19.
//  Copyright © 2019 student. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var newTask: UITextField!
    @IBAction func addNewTask(_ sender: Any) {
        let itemObject = UserDefaults.standard.object(forKey: "tasklist")
        
        var tasklist:[String]
        
        if let tempTask = itemObject as? [String] {
            tasklist = tempTask
            tasklist.append(newTask.text!)
            
            print(tasklist)
        } else {
            tasklist = [newTask.text!]
        }
        
        UserDefaults.standard.set(tasklist, forKey: "tasklist")
        
        newTask.text = ""
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?){
        self.view.endEditing(true)
    }


    func textFieldShouldReturn(_ textfield: UITextField) -> Bool {
        textfield.resignFirstResponder()
        
        return true
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
}


