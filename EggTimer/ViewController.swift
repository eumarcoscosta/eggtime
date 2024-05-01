//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var eggTimes = ["Soft": 300, "Medium": 420, "Hard": 720]
    
    var secondsRemanining = 60

    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        
        let hardness = sender.currentTitle!
        
        secondsRemanining = eggTimes[hardness]!
        
        Timer.scheduledTimer(timeInterval: 1.0, target:self, selector:
            #selector(updateTimer), userInfo:nil, repeats: true)
        
    }
    @objc func updateTimer() {
        if secondsRemanining > 0 {
            print("\(secondsRemanining) seconds.")
            secondsRemanining -= 1
        }
    }
    
}

