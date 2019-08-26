//
//  ResultTableViewCell.swift
//  XoSoVietlott
//
//  Created by Truong Le on 8/25/19.
//  Copyright © 2019 Truong Le. All rights reserved.
//

import UIKit

class ResultTableViewCell: UITableViewCell {
    
    @IBOutlet var numLabels: [UILabel]!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func config(chain: [Int]) {
        if chain.count != numLabels.count {
            return
        }
        for label in numLabels {
            label.text = String(format: "%d", chain[label.tag])
        }
    }
}
