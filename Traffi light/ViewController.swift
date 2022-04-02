//
//  ViewController.swift
//  Traffi light
//
//  Created by Stanislav Demyanov on 02.04.2022.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var redLight: UIView!
    @IBOutlet weak var yellowLight: UIView!
    @IBOutlet weak var greenLight: UIView!
    @IBOutlet weak var nextLight: UIButton!
    
    private var numberOfPressed = 0
    
    override func viewDidLoad() {
        redLight.layer.cornerRadius = redLight.frame.size.width / 2
        yellowLight.layer.cornerRadius = yellowLight.frame.size.width / 2
        greenLight.layer.cornerRadius = greenLight.frame.size.width / 2
        
        redLight.alpha = 0.25
        yellowLight.alpha = 0.25
        greenLight.alpha = 0.25
    }
    

    @IBAction func colorChange(_ sender: UIButton) {
        sender.setTitle("NEXT", for: .normal)
        sender.titleLabel?.font = .systemFont(ofSize: 25)

        if numberOfPressed == 0 {
            redLight.alpha = 1
            greenLight.alpha = 0.25
            numberOfPressed += 1
        } else if numberOfPressed == 1 {
            redLight.alpha = 0.25
            yellowLight.alpha = 1
            numberOfPressed += 1
        } else {
            yellowLight.alpha = 0.25
            greenLight.alpha = 1
            numberOfPressed = 0
        }
    }
}
