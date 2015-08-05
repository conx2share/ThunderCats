//
//  UICollectionViewDataSource.swift
//  ThunderCats Example
//
//  Created by Kyle Bashour on 8/5/15.
//  Copyright (c) 2015 Metova. All rights reserved.
//

import UIKit

class UICollectionViewDataSource: NSObject, UITableViewDataSource {
    
    let classMethods = [
        Example(description: "Returns a string equal to the class name for use as a reuse identifier.", code: "// returns \"MyCustomCell\"\nMyCustomCell.tc_reuseIdentifier()"),
        Example(description: "Returns a string equal to the class name.", code: "// returns \"MyCustomCell\"\nMyCustomCell.tc_nibName()"),
        Example(description: "Returns a string that is equal to the class name with \"_iPad\" appended to it.", code: "// returns \"MyCustomCell_iPad\"\nMyCustomCell.tc_iPadNibName()"),
        Example(description: "Returns a nib for the cell subclass if one exists and is named after the class.", code: "// returns a UINib created with the name \"MyCustomCell\"\nMyCustomCell.tc_nib()"),
        Example(description: "Returns a nib for the cell subclass if one exists and is named after the classwith \"_iPad\" appended to it.", code: "// returns a UINib created with the name \"MyCustomCell_iPad\"\nMyCustomCell.tc_iPadNib()"),
    ]

    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Instance Methods"
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return classMethods.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(Constants.exampleCellID) as! ExampleCell
        cell.setupWithExample(classMethods[indexPath.row])
        return cell
    }
}
