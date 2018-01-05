//
//  EmojiDefinitionViewController.swift
//  emojiDictionary
//
//  Created by Nevin Herring on 1/3/18.
//  Copyright © 2018 Nevin Herring. All rights reserved.
//

import UIKit

class EmojiDefinitionViewController: UIViewController {

    var emoji = Emoji()
    
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var birthLabel: UILabel!
    @IBOutlet weak var emojiDefinitionLabel: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        emojiLabel.text = emoji.theEmoji
        emojiDefinitionLabel.text = emoji.def
        birthLabel.text = "Birth Year: \(emoji.birthYear)"
        categoryLabel.text = "Category: \(emoji.category)"
        
    }    
    

}
