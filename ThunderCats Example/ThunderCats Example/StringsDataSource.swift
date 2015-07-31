//
//  StringsDataSource.swift
//  ThunderCats Example
//
//  Created by Kyle Bashour on 7/31/15.
//  Copyright (c) 2015 Metova. All rights reserved.
//

import UIKit
import ThunderCats

class StringsDataSource: NSObject, UITableViewDataSource {
    
    let examples = [
        Example(description: "Generate a UUID: \(String.tc_UUID())", code: "String.tc_UUID()")
    ]
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return examples.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(Constants.exampleCellID) as! ExampleCell
        cell.setupWithExample(examples[indexPath.row])
        return cell
    }
}
