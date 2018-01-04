//
//  EmojiDefinitionViewController.swift
//  emojiDictionary
//
//  Created by Nevin Herring on 1/3/18.
//  Copyright © 2018 Nevin Herring. All rights reserved.
//

import UIKit

class EmojiDefinitionViewController: UIViewController {

    var emoji = ""
    
    @IBOutlet weak var emojiDefinitionLabel: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        emojiLabel.text = emoji
        
        if emoji == "😀"{
            emojiDefinitionLabel.text = "A smiley face"
        }else if emoji == "💩"{
            emojiDefinitionLabel.text = "A poop face, good detail"
        }else if emoji == "🐒"{
            emojiDefinitionLabel.text = "A monkey"
        }else if emoji == "⛪️"{
            emojiDefinitionLabel.text = "A church, look at the details"
        }
    }    
    

}
