//
//  ViewController.swift
//  ThunderCats Example
//
//  Created by Kyle Bashour on 7/31/15.
//  Copyright (c) 2015 Metova. All rights reserved.
//

import UIKit

class MainVC: UITableViewController {

    // an array of each example
    let examples = ["Strings"]
    
    // an array of the corresponding data source
    let dataSources = [
        StringsDataSource()
    ]
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        assert(examples.count == dataSources.count, "There should be a data source for each example")
        return examples.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(Constants.mainCellID) as! UITableViewCell
        cell.textLabel?.text = examples[indexPath.row]
        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let exampleController = storyboard?.instantiateViewControllerWithIdentifier(Constants.exampleVC) as! ExampleVC
        exampleController.dataSource = dataSources[indexPath.row]
        exampleController.title = examples[indexPath.row]
        navigationController?.pushViewController(exampleController, animated: true)
    }
}
