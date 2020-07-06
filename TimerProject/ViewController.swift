//
//  ViewController.swift
//  TimerProject
//
//  Created by AAJM van Montfort on 05/07/2020.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lblTimer: UILabel!

    var timer = Timer()
    var counter = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        counter = 10
        lblTimer.text = "Time: \(counter)"
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerFunction), userInfo: nil, repeats: true)
    }

    @objc func timerFunction() {
        lblTimer.text = "Time: \(counter)"
        counter -= 1
        
        if counter == 0 {
            timer.invalidate()
            lblTimer.text = "Time's over!"
        }
    }
    
    @IBAction func btnTimer(_ sender: Any) {
    }
    
}

