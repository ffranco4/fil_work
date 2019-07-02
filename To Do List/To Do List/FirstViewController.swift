//
//  FirstViewController.swift
//  To Do List
//
//  Created by student on 7/2/19.
//  Copyright © 2019 student. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasklist.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "Cell" )
        
        cell.textLabel?.text = tasklist[indexPath.row]
        
        return cell
    }
    
    @IBOutlet weak var table: UITableView!
    
    var tasklist: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func viewDidAppear(_ animated:
        Bool) {
        let itemobject = UserDefaults.standard.object(forKey:"tasklist")
        
        if let tempTask = itemobject as? [String] {
            tasklist = tempTask
    }
        
          table.reloadData()
    }
    
    

}


