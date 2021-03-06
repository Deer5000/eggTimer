//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var titleLabel: UILabel!
    
    var eggTimes = ["Soft": 3, "Medium": 4, "Hard": 7]
    var timer = Timer()
    var totalTime = 0
    var secondsPassed = 0
    
    //    let soft = 5
//    let medium = 7
//    let hard = 12
//
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        
        timer.invalidate()
        let hardness = sender.currentTitle!
        totalTime = eggTimes[hardness]!
        
        progressBar.progress = 0.0
        secondsPassed = 0
        titleLabel.text = hardness
        
//        Switch statement
        
//        switch hardness {
//        case "Soft":
//            print(dict[hardness]!)
//        case "Medium":
//            print(dict[hardness]!)
//        case "Hard":
//            print(dict[hardness]!)
//        default:
//            print("Error")
//        }
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
    }
    
    @objc func updateTimer() {
        if secondsPassed < totalTime {
            secondsPassed += 1
            let percentageProgress = Float(secondsPassed) / Float(totalTime)
//            print(percentageProgress)
            progressBar.progress = percentageProgress
//            print(percentageProgress)
        } else {
//            The way i used to get timer to stop
//            progressBar.progress = Float(1)
            timer.invalidate()
            titleLabel.text = "DONE"
            AudioServicesPlayAlertSound(SystemSoundID(1322))
            }
        }
    }


        
        
        // Timer Function that I created.
        
        
//        var count = dict[hardness]! + 1

//        func timer() {
//            count -= 1
//            DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
//            print("\(count) seconds")
//            if count == 0 {
//                print("Congrats you succesfully made the counter!")
//            } else {
//                timer()
//                }
//            }
//        }
//
//        timer()

        
        
        
        
 /* Converted If Else statement into a switch statement.*/
        
//        if hardness == "Soft" {
//            print(soft)
//        } else if
//            hardness == "Medium" {
//                print(medium)
//            } else {
//                print(hard)
//            }

