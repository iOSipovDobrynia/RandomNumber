//
//  ViewController.swift
//  RandomNumber
//
//  Created by Goodwasp on 03.05.2023.
//

import UIKit

class ViewController: UIViewController {
    // MARK: IBOutlets
    @IBOutlet var minimumNumberLabel: UILabel!
    @IBOutlet var maximumNumberLabel: UILabel!
    @IBOutlet var generatedNumberLabel: UILabel!
    
    @IBOutlet var getRandomNumberButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: IBActions
    @IBAction func getButtonPressed() {
        let min = Int(minimumNumberLabel.text ?? "") ?? 0
        let max = Int(maximumNumberLabel.text ?? "") ?? 100
        
        generatedNumberLabel.text = Int.random(in: min...max).formatted()
    }

}

