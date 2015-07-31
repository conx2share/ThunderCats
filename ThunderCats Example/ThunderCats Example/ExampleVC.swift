//
//  ExampleVC.swift
//  ThunderCats Example
//
//  Created by Kyle Bashour on 7/31/15.
//  Copyright (c) 2015 Metova. All rights reserved.
//

import UIKit

class ExampleVC: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var dataSource: UITableViewDataSource!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTable()
    }
    
    func setupTable() {
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.estimatedRowHeight = 120
        tableView.dataSource = dataSource
        tableView.reloadData()
    }
}
