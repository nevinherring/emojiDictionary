//
//  EmojiTableViewController.swift
//  emojiDictionary
//
//  Created by Nevin Herring on 1/2/18.
//  Copyright © 2018 Nevin Herring. All rights reserved.
//

import UIKit

class EmojiTableViewController: UITableViewController {

    var emojis : [Emoji] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        emojis = createEmojis()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return emojis.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)

        // Configure the cell...
        
        cell.textLabel?.text = emojis[indexPath.row].theEmoji
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let emoji = emojis[indexPath.row]
        
        performSegue(withIdentifier: "ourSegue", sender: emoji)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let emojiDefVC = segue.destination as! EmojiDefinitionViewController
        emojiDefVC.emoji = sender as! Emoji
    }
    
    func createEmojis() -> [Emoji]{
        let smiley = Emoji()
        smiley.theEmoji = "😀"
        smiley.def = "A happy smiling face"
        smiley.birthYear = 2010
        smiley.category = "Faces"
        
        let avo = Emoji()
        avo.theEmoji = "🥑"
        avo.birthYear = 2016
        avo.def = "A nice ripe Avocado"
        avo.category = "Food"
        
        return [smiley, avo]
    }
    
}
