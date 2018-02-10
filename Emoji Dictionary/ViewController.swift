//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Jason Cox on 2/6/18.
//  Copyright © 2018 Jason Cox. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var tableView: UITableView!
    
    var emojis : [Emoji] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView.dataSource = self
        tableView.delegate = self
        emojis = makeEmojiArray()
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = emoji.stringEmoji
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "moveSeque", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defVC = segue.destination as! DefinitionViewController
        defVC.emoji = sender as! Emoji
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func makeEmojiArray() -> [Emoji] {
        let emoji1 = Emoji()
        emoji1.stringEmoji = "🦋"
        emoji1.category = "Animals/Nature"
        emoji1.created = 2010
        emoji1.definition = "Butterfly"
        
        let emoji2 = Emoji()
        emoji2.stringEmoji = "🐹"
        emoji2.category = "Animals/Nature"
        emoji2.created = 2011
        emoji2.definition = "A cute hamster!"
        
        let emoji3 = Emoji()
        emoji3.stringEmoji = "👽"
        emoji3.category = "Smileys/People"
        emoji3.created = 2012
        emoji3.definition = "A freaky alien!"
        
        let emoji4 = Emoji()
        emoji4.stringEmoji = "💒"
        emoji4.category = "Travel/Places"
        emoji4.created = 2011
        emoji4.definition = "A wedding chapel"
        
        let emoji5 = Emoji()
        emoji5.stringEmoji = "😎"
        emoji5.category = "Smileys/People"
        emoji5.created = 2008
        emoji5.definition = "A freaky alien!"
        
        let emoji6 = Emoji()
        emoji6.stringEmoji = "🤠"
        emoji6.category = "Smileys/People"
        emoji6.created = 2012
        emoji6.definition = "A cowboy Smiley!"
        
        let emoji7 = Emoji()
        emoji7.stringEmoji = "😆"
        emoji7.category = "Smileys/People"
        emoji7.created = 2010
        emoji7.definition = "A squinting Smiley!"
        
        let emoji8 = Emoji()
        emoji8.stringEmoji = "🐬"
        emoji8.category = "Animals/Nature"
        emoji8.created = 2011
        emoji8.definition = "A sleek dolphin!"
        
        return [emoji1, emoji2, emoji3, emoji4, emoji5, emoji6, emoji7, emoji8]
    }
}

