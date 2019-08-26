//
//  ResultViewController.swift
//  XoSoVietlott
//
//  Created by Truong Le on 8/25/19.
//  Copyright © 2019 Truong Le. All rights reserved.
//

import UIKit

class ResultViewController: BaseViewController {
    @IBOutlet weak var resultTableView: UITableView!
    var data: [[Int]] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func backToHome(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
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
