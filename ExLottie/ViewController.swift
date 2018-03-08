//
//  ViewController.swift
//  ExLottie
//
//  Created by naohide anahara on 2018/03/08.
//  Copyright © 2018年 fragment. All rights reserved.
//

import UIKit
import Lottie


class ViewController: UIViewController {
    @IBOutlet var simpleAnimationView: LOTAnimationView!
    @IBOutlet var singleAnimationView: LOTAnimationView!
    @IBOutlet var multiAnimationView: LOTAnimationView!
    
    enum Animation: String {
        case Simple = "simple"
        case Single = "single-stage"
        case Multi = "multi-stage"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        simpleAnimationView.setAnimation(named: Animation.Simple.rawValue)
        simpleAnimationView.isUserInteractionEnabled = true
        simpleAnimationView.accessibilityIdentifier = Animation.Simple.rawValue
        let simpleRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.play))
        simpleAnimationView.addGestureRecognizer(simpleRecognizer)
        
        singleAnimationView.setAnimation(named: Animation.Single.rawValue)
        singleAnimationView.isUserInteractionEnabled = true
        singleAnimationView.accessibilityIdentifier = Animation.Single.rawValue
        let singleRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.play))
        singleAnimationView.addGestureRecognizer(singleRecognizer)
        
        multiAnimationView.setAnimation(named: Animation.Multi.rawValue)
        multiAnimationView.isUserInteractionEnabled = true
        multiAnimationView.accessibilityIdentifier = Animation.Multi.rawValue
        let multiRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.play))
        multiAnimationView.addGestureRecognizer(multiRecognizer)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @objc func play(recognizer: UIGestureRecognizer) {
        switch recognizer.view!.accessibilityIdentifier! {
        case Animation.Simple.rawValue:
            simpleAnimationView.play()
        case Animation.Single.rawValue:
            singleAnimationView.play()
        case Animation.Multi.rawValue:
            multiAnimationView.play()
        default:
            return
        }
    }
}

