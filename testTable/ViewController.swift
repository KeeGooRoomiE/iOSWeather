//
//  ViewController.swift
//  testTable
//
//  Created by Ксандер Гусаров on 07.08.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var table : UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    func setup() {
        table?.delegate = self
        table?.dataSource = self
        table?.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
}

extension ViewController: UITableViewDelegate {
    
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = table.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        for i in indexPath {
            cell.textLabel?.text = "rrr" + String(i)
        }
        return cell
    }
}


