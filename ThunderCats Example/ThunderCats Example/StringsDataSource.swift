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
        Example(description: "Generate a UUID: \(String.tc_UUID()). Returns a string.", code: "String.tc_UUID()"),
        Example(description: "Ask a string whether or not it's a valid email address. Returns a bool.", code: "let email = \"test@metova.com\"\n\n// returns true\nemail.tc_isValidEmailAddressFormat()")
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
