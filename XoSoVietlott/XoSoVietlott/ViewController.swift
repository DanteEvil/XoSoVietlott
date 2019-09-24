//
//  ViewController.swift
//  XoSoVietlott
//
//  Created by Truong Le on 8/24/19.
//  Copyright © 2019 Truong Le. All rights reserved.
//

import UIKit
import Lottie

class ViewController: BaseViewController {
    let animationView = AnimationView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        navigationController?.isNavigationBarHidden = true
        let animation = Animation.named("lottery")
        animationView.animation = animation
        animationView.loopMode = LottieLoopMode.loop
        view.addSubview(animationView)
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        animationView.frame = view.bounds
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        animationView.play()
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidAppear(animated)
        animationView.stop()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            self.performSegue(withIdentifier: String(describing: PriceSelectViewController.self), sender: nil)
        }
    }
}

