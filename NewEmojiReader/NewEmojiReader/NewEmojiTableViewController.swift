//
//  NewEmojiTableViewController.swift
//  NewEmojiReader
//
//  Created by SASMobile on 12.04.2021.
//  Copyright © 2021 Oleksii Kononov. All rights reserved.
//

import UIKit

class NewEmojiTableViewController: UITableViewController {
    
    var emoji = Emoji(emoji: "", name: "", description: "", isFavourite: false)
    
    @IBOutlet weak var emojiTextFiald: UITextField!
    @IBOutlet weak var nameTextFiald: UITextField!
    @IBOutlet weak var descriptionTextFiald: UITextField!
    
    @IBOutlet weak var saveButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateSaveButtenState()
         updateUI()
    }
    
    private func updateSaveButtenState() {
        let emojiText = emojiTextFiald.text ?? ""
        let nameText = nameTextFiald.text ?? ""
        let descriptionText = descriptionTextFiald.text ?? ""
        
        saveButton.isEnabled = !emojiText.isEmpty && !nameText.isEmpty && !descriptionText.isEmpty
    }
    
    private func updateUI() {
        emojiTextFiald.text = emoji.emoji
        nameTextFiald.text = emoji.name
        descriptionTextFiald.text = emoji.description
    }
    
    @IBAction func textChanged(_ sender: UITextField) {
        updateSaveButtenState()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        guard segue.identifier == "saveSegue" else { return }
        
        let emoji = emojiTextFiald.text ?? ""
        let name = nameTextFiald.text ?? ""
        let description = descriptionTextFiald.text ?? ""
        
        self.emoji = Emoji(emoji: emoji, name: name, description: description, isFavourite: self.emoji.isFavourite)
    }
    
}
