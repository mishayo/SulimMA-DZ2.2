//
//  ViewController.swift
//  SulimMA-DZ2.2
//
//  Created by михаил сулим on 26.03.2021.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBOutlet weak var colorBar: UIView!
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorBar.layer.cornerRadius = 15
        redLabel.text = "\(redSlider.value)"
        greenLabel.text = "\(greenSlider.value)"
        blueLabel.text = "\(blueSlider.value)"
        
        colorBar.backgroundColor = UIColor.init(displayP3Red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
        
    }

    @IBAction func redSliderMove(_ sender: UISlider) {
        redLabel.text = String(format: "%.2f", sender.value)
        colorBar.backgroundColor = UIColor.init(displayP3Red: CGFloat(sender.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
    }
    
    @IBAction func greenSliderMove(_ sender: UISlider) {
        greenLabel.text = String(format: "%.2f", sender.value)
        colorBar.backgroundColor = UIColor.init(displayP3Red: CGFloat(redSlider.value), green: CGFloat(sender.value), blue: CGFloat(blueSlider.value), alpha: 1)
    }
    
    @IBAction func blueSliderMove(_ sender: UISlider) {
        blueLabel.text = String(format: "%.2f", sender.value)
        colorBar.backgroundColor = UIColor.init(displayP3Red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(sender.value), alpha: 1)
    }
    
    
}

