//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Jason Cox on 2/7/18.
//  Copyright © 2018 Jason Cox. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    @IBOutlet weak var definitionLabel: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!
    var emoji = "NO EMOJI"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        emojiLabel.text = emoji
        
        if emoji == "🐹" {
        definitionLabel.text = "A cute Hamster!"
        }
        if emoji == "🦋" {
            definitionLabel.text = "A beautiful butterfly!"
        }
        if emoji == "👽" {
            definitionLabel.text = "A freaky alien!"
        }
        if emoji == "💒" {
            definitionLabel.text = "A wedding chapel!"
        }
        if emoji == "😎" {
            definitionLabel.text = "A cool Smiley!"
        }
        if emoji == "🤠" {
            definitionLabel.text = "A cowboy Smiley!"
        }
        if emoji == "😆" {
            definitionLabel.text = "A Smiley with tightly crossed eyes!"
        }
        if emoji == "🐬" {
            definitionLabel.text = "A friendly Dolphin!"
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    



}
