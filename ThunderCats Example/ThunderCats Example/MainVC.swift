//
//  ViewController.swift
//  ThunderCats Example
//
//  Created by Kyle Bashour on 7/31/15.
//  Copyright (c) 2015 Metova. All rights reserved.
//

import UIKit

class MainVC: UITableViewController {

    /************************************************************

                        HOW TO ADD AN EXAMPLE
    
    1.  Create a class that inherits from NSObject and conforms
        to UITableViewDataSource, just like 
        StringsDataSource.swift
    
    2.  Add a title for it to the examples array below.
    
    3.  Add an instance of it to the DataSources array below.

    4.  That's it!

    ************************************************************/


    // an array of each example
    let examples = ["Strings", "UIColor"]
    
    // an array of the corresponding data source
    let dataSources: [UITableViewDataSource] = [
        StringsDataSource(),
        UIColorDataSource()
    ]
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        if let selectedIndex = tableView.indexPathForSelectedRow() {
            tableView.deselectRowAtIndexPath(selectedIndex, animated: true)
        }
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        assert(examples.count == dataSources.count, "There should be a single data source for each example")
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
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return .Default
    }
}
