//
//  ResultViewController.swift
//  XoSoVietlott
//
//  Created by Truong Le on 8/25/19.
//  Copyright © 2019 Truong Le. All rights reserved.
//

import UIKit
import BaseComponentKit

class ResultViewController: BaseViewController {
    @IBOutlet weak var topLabel: UILabel!
    @IBOutlet weak var resultTableView: UITableView!
    var data: [[Int]] = []
    var price = Price.mega

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let numString = data.count.stringValue()
        let priceString = price.rawValue
        let rawString = String(format: "Lấy %d vé %@", data.count, price.rawValue)
        let attributesString = NSMutableAttributedString(string: rawString)
        attributesString.addAttribute(.foregroundColor, value: UIColor.red, range: NSRange(rawString.range(of: numString)!, in: rawString))
        attributesString.addAttribute(.foregroundColor, value: UIColor.red, range: NSRange(rawString.range(of: priceString)!, in: rawString))
        topLabel.attributedText = attributesString
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
}

extension ResultViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: ResultViewController.self)) as! ResultTableViewCell
        cell.config(chain: data[indexPath.row])
        return cell
    }
    
    
}
