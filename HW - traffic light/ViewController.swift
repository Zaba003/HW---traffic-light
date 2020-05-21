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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redSignal.layer.cornerRadius = 50
        yellowSignal.layer.cornerRadius = 50
        greenSignail.layer.cornerRadius = 50
        
        redSignal.alpha = 0.3
        yellowSignal.alpha = 0.3
        greenSignail.alpha = 0.3
        
        
        startButton.layer.cornerRadius = 10
    }
    
    var lightStatus = 0
    
    @IBAction func startButtonPress() {
        startButton.setTitle("NEXT", for: .normal)
        
        switch lightStatus {
            
        case 0:
            redSignal.alpha = 1
            yellowSignal.alpha = 0.3
            greenSignail.alpha = 0.3
            lightStatus += 1
            
        case 1:
            redSignal.alpha = 0.3
            yellowSignal.alpha = 1
            lightStatus += 1
            
        case 2:
            redSignal.alpha = 0.3
            yellowSignal.alpha = 0.3
            greenSignail.alpha = 1
            lightStatus = 0
            
        default:
            break
        }
        
    }
    
}

