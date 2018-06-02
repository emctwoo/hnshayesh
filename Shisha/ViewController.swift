//
//  ViewController.swift
//  Shisha
//
//  Created by Mattias Careem on 5/30/18.
//  Copyright © 2018 Mattias Careem. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    //MARK: Properties
    @IBOutlet weak var shishaStatusField: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //MARK: Actions
    @IBAction func clickMainButton(_ sender: UIButton) {
        // Touch Up Inside.
        let shishaPreparation = ShishaPreparation()
        if shishaPreparation.hasNextPreparationPhase {
            shishaStatusField.text = shishaPreparation.getReadyState()
        }
        sender.isEnabled = false
        // Set ShishaTimer to re-activate use of button.
    }
    
    // Action for double click to regret clicking button.
    
    @IBAction func touchMainButton(_ sender: UIButton) {
        // Touch Drag Enter.
        sender.alpha = CGFloat(UISettings.defaultAlphaMainButtonClicked)
    }
    
    @IBAction func reEnterMainButton(_ sender: UIButton) {
        // Touch Drag Enter.
        sender.alpha = CGFloat(UISettings.defaultAlphaMainButtonClicked)
    }
    
    @IBAction func exitMainButton(_ sender: UIButton) {
        // Touch Drag Exit
        sender.alpha = CGFloat(UISettings.defaultAlphaMainButtonNotClicked)
    }
}

