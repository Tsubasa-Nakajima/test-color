//
//  ViewController.swift
//  Test swift
//
//  Created by Tsubasa NAKAJIMA on H28/02/27.
//  Copyright © 平成28年 Tsubasa NAKAJIMA. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
//    @IBOutlet weak var mySlider: UISlider!
    
    var ax = Int()
    
    @IBOutlet var label:UILabel!
    @IBOutlet var label1:UILabel!
    @IBOutlet var switchOnOff: UISwitch!
    
    @IBOutlet var sliderRed:UISlider!
    @IBOutlet var sliderBlue:UISlider!
    @IBOutlet var sliderGreen:UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        switchOnOff.on = false
        label.text = "OFF"
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func a() {
        let redVal:CGFloat = CGFloat(sliderRed.value)

        let greenVal:CGFloat = CGFloat(sliderGreen.value)
  
        let blueVal:CGFloat = CGFloat(sliderBlue.value)
        
        self.view.backgroundColor = UIColor(red: redVal, green: greenVal, blue: blueVal, alpha: 1.0)
    }
    
    @IBAction func b() {
        label.text = switchOnOff.on ? "ON" : "OFF"
        if switchOnOff.on {
            ax = ax + 1
            label1.text = String(ax)
        }
    }
    
}

