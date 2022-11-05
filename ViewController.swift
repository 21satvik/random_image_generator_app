//
//  ViewController.swift
//  UiPractice
//
//  Created by admin on 03/11/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var sliderOutlet: UISlider!
    
    @IBOutlet var labelOutlet: UILabel!
    
    @IBOutlet var nameOutlet: UITextField!
    
    @IBOutlet var imageOutlet: UIImageView!
    
    @IBOutlet var infoOutlet: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        sliderFn()
          }
    
    func sliderFn() {
        labelOutlet.text = String(Int(sliderOutlet.value))
    }
    
    @IBAction func sliderValue(_ sender: Any) {
        sliderFn()
    }
    
    
    @IBAction func getRandomImage(_ sender: Any) {
        if nameOutlet.text == "" {
            infoOutlet.text = "Please enter your name first!"
        } else {
            infoOutlet.text = "Hey " + nameOutlet.text! + "! Your age is " + labelOutlet.text!
            imageOutlet.imageFrom(url: URL(string:"https://picsum.photos/200/300")!)
            imageOutlet.translatesAutoresizingMaskIntoConstraints = false
        }
    }
    
}

