//
//  ViewController.swift
//  To_Do_List
//
//  Created by Batuhan Erdem on 13.01.2025.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {
   

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        // Do any additional setup after loading the view.
    }


    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 30
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "customCell", for: indexPath) as! CustomTableViewCell
        cell.taskLabel.text = "test"
        cell.iconImageView.image = UIImage(named: "circle.png")
        
        return cell
    }
}

