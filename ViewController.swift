//
//  ViewController.swift
//  StopWatch
//
//  Created by 森川彩音 on 2017/06/11.
//  Copyright © 2017年 森川彩音. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var label: UILabel!

    var count: Float = 0.0
    var timer: Timer = Timer()

     override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func start() {
        if !timer.isValid{
            
            timer = Timer.scheduledTimer(
            timeInterval: 0.001,
            target: self,
            selector: #selector(self.up),
            userInfo: nil,
            repeats: true
            )
        }
        
    }

    @IBAction func stop() {
        
        if timer.isValid {
            timer.invalidate()
    }
    }
    
    func up() {
        
   count = count + 0.001
        label.text = String(format: "%.3f", count)
    }
    
    @IBAction func reset() {
        count = 0
            timer.invalidate()
            label.text = String(count)
    
        }


    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
}
}
