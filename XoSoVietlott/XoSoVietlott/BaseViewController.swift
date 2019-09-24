//
//  BaseViewController.swift
//  XoSoVietlott
//
//  Created by Truong Le on 8/24/19.
//  Copyright © 2019 Truong Le. All rights reserved.
//

import Foundation
import UIKit
import BaseComponentKit

class BaseViewController: GBaseViewController {
    @IBAction func backButtonOnTouch(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
}
