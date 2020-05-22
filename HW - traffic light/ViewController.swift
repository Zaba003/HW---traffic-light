//
//  ViewController.swift
//  HW - traffic light
//
//  Created by Кирилл Заборский on 20.05.2020.
//  Copyright © 2020 Кирилл Заборский. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var redSignal: UIView!
    @IBOutlet weak var yellowSignal: UIView!
    @IBOutlet weak var greenSignail: UIView!
    @IBOutlet weak var startButton: UIButton!
    
    private var lightStatus = 0
    private let lightIsOn: CGFloat = 1
    private let lightIsOff: CGFloat = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        startButton.layer.cornerRadius = 10
        
        redSignal.alpha = lightIsOff
        yellowSignal.alpha = lightIsOff
        greenSignail.alpha = lightIsOff
        
    }
    override func viewWillLayoutSubviews() {
        
        redSignal.layer.cornerRadius = redSignal.frame.width / 2
        yellowSignal.layer.cornerRadius = yellowSignal.frame.width / 2
        greenSignail.layer.cornerRadius = redSignal.frame.width / 2
    }
    
    @IBAction func startButtonPress() {
        startButton.setTitle("NEXT", for: .normal)
        
        switch lightStatus {
            
        case 0:
            redSignal.alpha = lightIsOn
            yellowSignal.alpha = lightIsOff
            greenSignail.alpha = lightIsOff
            lightStatus += 1
            
        case 1:
            redSignal.alpha = lightIsOff
            yellowSignal.alpha = lightIsOn
            lightStatus += 1
            
        case 2:
            redSignal.alpha = lightIsOff
            yellowSignal.alpha = lightIsOff
            greenSignail.alpha = lightIsOn
            lightStatus = 0
            
        default:
            break
        }
        
    }
    
}

