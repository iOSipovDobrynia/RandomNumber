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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let settingsVC = segue.destination as? SettingsViewController else {return }
        settingsVC.maximumValue = maximumNumberLabel.text
        settingsVC.minimumValue = minimumNumberLabel.text
    }
    
    // MARK: IBActions
    @IBAction func getButtonPressed() {
        let min = Int(minimumNumberLabel.text ?? "") ?? 0
        let max = Int(maximumNumberLabel.text ?? "") ?? 100
        
        generatedNumberLabel.text = Int.random(in: min...max).formatted()
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        guard let settingsVS = segue.source as? SettingsViewController else {return }
        minimumNumberLabel.text = settingsVS.minimumValueTF.text
        maximumNumberLabel.text = settingsVS.maximumValueTF.text
    }

}

