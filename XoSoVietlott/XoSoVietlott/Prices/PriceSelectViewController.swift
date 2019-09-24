//
//  PriceSelectViewController.swift
//  XoSoVietlott
//
//  Created by Truong Le on 9/24/19.
//  Copyright © 2019 Truong Le. All rights reserved.
//

import UIKit
import BaseComponentKit
import RxSwift
import RxCocoa
import Lottie

class PriceSelectViewController: BaseViewController {
    @IBOutlet weak var animationWrapper: UIView!
    @IBOutlet weak var megaButton: GBaseButton!
    @IBOutlet weak var powerButton: GBaseButton!
    let animationView = AnimationView()
    let disposeBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let animation = Animation.named("waiting")
        animationView.animation = animation
        animationView.loopMode = LottieLoopMode.loop
        animationWrapper.addSubview(animationView)
        // Listening for tap events
        megaButton.rx.tap.subscribe(onNext: { _ in
            self.performSegue(withIdentifier: String(describing: HomeViewController.self), sender: Price.mega)
        })
        .disposed(by: disposeBag)
        powerButton.rx.tap.subscribe(onNext: { _ in
            self.performSegue(withIdentifier: String(describing: HomeViewController.self), sender: Price.power)
        })
        .disposed(by: disposeBag)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        animationView.frame = animationWrapper.bounds
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        animationView.play()
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidAppear(animated)
        animationView.stop()
    }
    
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let identifier = segue.identifier,
            identifier == String(describing: HomeViewController.self),
            let desVC = segue.destination as? HomeViewController,
            let price = sender as? Price {
            desVC.price = price
        }
     }
}
