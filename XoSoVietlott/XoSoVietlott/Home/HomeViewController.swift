//
//  HomeViewController.swift
//  XoSoVietlott
//
//  Created by Truong Le on 8/24/19.
//  Copyright © 2019 Truong Le. All rights reserved.
//

import Foundation
import UIKit

class HomeViewController: BaseViewController {
    fileprivate var chains = [[Int]]()
    @IBAction func generateChainOfNumber(_ sender: Any) {
        chains.removeAll()
        guard let button = sender as? BaseButton, let text = button.titleLabel?.text, let numOfChain = Int(text) else {return}
        for _ in 1...numOfChain {
            chains.append(randomAChain())
        }
        performSegue(withIdentifier: String(describing: ResultViewController.self), sender: chains)
    }
    
    func randomAChain() -> [Int] {
        var initNums = [Int](1...45)
        for _ in 0...38 {
            let removed = Int.random(in: 0...initNums.count-1)
            print(initNums[removed])
            initNums.remove(at: removed)
        }
        return initNums
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let resultVc = segue.destination as? ResultViewController {
            resultVc.data = (sender as? [[Int]]) ?? []
        }
    }
}
