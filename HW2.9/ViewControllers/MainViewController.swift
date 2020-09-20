//
//  ViewController.swift
//  HW2.9
//
//  Created by Maxon on 18.09.2020.
//  Copyright © 2020 Maxim Shvanov. All rights reserved.
//

import Spring

class MainViewController: UIViewController {
    
    @IBOutlet var parametersLabel: UILabel!
    
    @IBOutlet var animationView: SpringView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func animationButtonPressed(_ sender: UIButton) {
        
        parametersLabel.text = randomAnimation()
        
    }
    
    private func randomAnimation() -> String {
        
        let animationName: String
        let animationCurve: String
        let animationForce: CGFloat
        let animationDuration: CGFloat
        let animationDelay: CGFloat
        
        let message: String
        
        animationView.animation = DataManager.animationNames.randomElement()!
        animationName = animationView.animation
        
        animationView.curve = DataManager.curveNames.randomElement()!
        animationCurve = animationView.curve
        
        animationView.force = CGFloat(.random(in: 0.1...5.0))
        animationForce = animationView.force
        
        animationView.duration = CGFloat(.random(in: 0.1...5.0))
        animationDuration = animationView.duration
        
        animationView.delay = CGFloat(.random(in: 0.0...1.5))
        animationDelay = animationView.delay
        
        animationView.animate()
        
        message = "Preset - '\(animationName)'\nCurve - '\(animationCurve)'\nForce - '\(Double(round(1000 * animationForce) / 1000))'\nDuration - '\(Double(round(1000 * animationDuration) / 1000))'\nDelay - '\(Double(round(1000 * animationDelay) / 1000))'"
        
        return message
    }
    
}

