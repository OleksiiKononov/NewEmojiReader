//
//  EmojiTableViewCell.swift
//  NewEmojiReader
//
//  Created by SASMobile on 09.04.2021.
//  Copyright © 2021 Oleksii Kononov. All rights reserved.
//

import UIKit

class EmojiTableViewCell: UITableViewCell {

    @IBOutlet var emojiLabel: UILabel!
    @IBOutlet var emojiName: UILabel!
    @IBOutlet var emojiDescription: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    func set(object: Emoji) {
        self.emojiLabel.text = object.emoji
        self.emojiName.text = object.name
        self.emojiDescription.text = object.description
    }
    
}
