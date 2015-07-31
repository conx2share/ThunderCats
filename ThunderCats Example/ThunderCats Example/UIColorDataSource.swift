//
//  UIColorDataSource.swift
//  ThunderCats Example
//
//  Created by Kyle Bashour on 7/31/15.
//  Copyright (c) 2015 Metova. All rights reserved.
//

import UIKit

class UIColorDataSource: NSObject, UITableViewDataSource {

    let classMethods = [
        Example(description: "Create a UIColor from a hex string. Strings may or may not have a # prefix. Returns a UIColor.", code: "let metovaGreen = UIColor.tc_colorWithHexString(\"#2FC587\")"),
    ]
    
    let instanceMethods = [
        Example(description: "Determine whether two UIColor instances are the same color.", code: "let firstColor = UIColor.tc_colorWithHexString(\"FFFFFF\")\nlet secondColor = UIColor.tc_colorWithHexString(\"FFFFFA\")\n\n// returns false\nfirstColor.tc_isEqualToColor(secondColor)"),
    ]
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return section == 0 ? "Class Methods" : "Instance Methods"
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return section == 0 ? classMethods.count : instanceMethods.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(Constants.exampleCellID) as! ExampleCell
        cell.setupWithExample(indexPath.section == 0 ? classMethods[indexPath.row] : instanceMethods[indexPath.row])
        return cell
    }
}
