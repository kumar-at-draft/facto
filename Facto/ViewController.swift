//
//  ViewController.swift
//  Facto
//
//  Created by Kumar Harsh on 04/06/25.
//

import UIKit

class ViewController: UIViewController {
    
    // Array of random facts
    let facts = [
        "Honey never spoils.",
        "A group of flamingos is called a 'flamboyance.'",
        "Bananas are berries, but strawberries aren't.",
        "Octopuses have three hearts.",
        "Australia is believed to have lost to emus in the Great Emu War of 1932",
        "A jiffy is an actual unit of time: 1/100th of a second.",
        "Cows have best friends and get stressed when they are separated.",
        "The shortest war in history lasted 38 minutes.",
        "The Eiffel Tower can be 15 cm taller during the summer.",
        "A small child could swim through the veins of a blue whale."
    ]
    
    // UI Elements
    @IBOutlet weak var factLabel: UILabel!
    @IBOutlet weak var getFactButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        displayRandomFact() // Show a fact when app loads
    }
    
    func setupUI() {
        // Configure the fact label
        factLabel.numberOfLines = 0
        factLabel.textAlignment = .center
        factLabel.font = UIFont.systemFont(ofSize: 18, weight: .medium)
        factLabel.textColor = .darkGray
        
        // Configure the button
        getFactButton.setTitle("Get Random Fact", for: .normal)
        getFactButton.backgroundColor = .systemBlue
        getFactButton.setTitleColor(.white, for: .normal)
        getFactButton.layer.cornerRadius = 8
        getFactButton.titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .semibold)
    }
    
    @IBAction func getFactButtonTapped(_ sender: UIButton) {
        displayRandomFact()
    }
    
    func displayRandomFact() {
        let randomIndex = Int.random(in: 0..<facts.count)
        let randomFact = facts[randomIndex]
        
        // Add a smooth animation when changing facts
        UIView.transition(with: factLabel, duration: 0.3, options: .transitionCrossDissolve, animations: {
            self.factLabel.text = randomFact
        }, completion: nil)
    }
}
