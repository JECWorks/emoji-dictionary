//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Jason Cox on 2/7/18.
//  Copyright © 2018 Jason Cox. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var createdLabel: UILabel!
    @IBOutlet weak var definitionLabel: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!
    var emoji = "NO EMOJI"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        emojiLabel.text = emoji
        
        if emoji == "🐹" {
        definitionLabel.text = "A cute Hamster!"
            categoryLabel.text = "Category: Animals/Nature"
            createdLabel.text = "Created: 2011"
        }
        if emoji == "🦋" {
            definitionLabel.text = "A beautiful butterfly!"
            categoryLabel.text = "Category: Animals/Nature"
            createdLabel.text = "Created: 2010"
        }
        if emoji == "👽" {
            definitionLabel.text = "A freaky alien!"
            categoryLabel.text = "Category: Smileys/People"
            createdLabel.text = "Created: 2012"
        }
        if emoji == "💒" {
            definitionLabel.text = "A wedding chapel!"
            categoryLabel.text = "Category: Travel/Places"
            createdLabel.text = "Created: 2011"
        }
        if emoji == "😎" {
            definitionLabel.text = "A cool Smiley!"
            categoryLabel.text = "Category: Smileys/People"
            createdLabel.text = "Created: 2008"
        }
        if emoji == "🤠" {
            definitionLabel.text = "A cowboy Smiley!"
            categoryLabel.text = "Category: Smileys/People"
            createdLabel.text = "Created: 2009"
        }
        if emoji == "😆" {
            definitionLabel.text = "A Smiley with tightly crossed eyes!"
            categoryLabel.text = "Category: Smileys/People"
            createdLabel.text = "Created: 2009"
        }
        if emoji == "🐬" {
            definitionLabel.text = "A friendly Dolphin!"
            categoryLabel.text = "Category: Animals/Nature"
            createdLabel.text = "Created: 2011"
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    



}
