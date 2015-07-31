//
//  ExampleCell.swift
//  ThunderCats Example
//
//  Created by Kyle Bashour on 7/31/15.
//  Copyright (c) 2015 Metova. All rights reserved.
//

import UIKit

class ExampleCell: UITableViewCell {
    
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var codeLabel: UILabel!
    
    func setupWithExample(example: Example) {
        descriptionLabel.text = example.description
        codeLabel.text = example.code
        setNeedsUpdateConstraints()
        updateConstraintsIfNeeded()
    }
}
