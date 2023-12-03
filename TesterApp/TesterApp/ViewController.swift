//
//  ViewController.swift
//  TesterApp
//
//  Created by Maaz M on 12/3/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func changeBackgroundColor(_ sender: UIButton) {
        func changeColor() -> UIColor {
            let red = CGFloat.random(in: 0...1)
            let green = CGFloat.random(in: 0...1)
            let blue = CGFloat.random(in: 0...1)
            
            return UIColor(red: red, green: green, blue: blue, alpha: 0.5)
        }
        let randomColor = changeColor()
        view.backgroundColor = randomColor
    }
    
    @IBAction func changeOpacity(_ sender: UISlider) {
        let opacityValue = CGFloat(sender.value)
        view.backgroundColor = view.backgroundColor?.withAlphaComponent(opacityValue)
    }
    
}

