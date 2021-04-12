//
//  EmojiableViewController.swift
//  NewEmojiReader
//
//  Created by SASMobile on 08.04.2021.
//  Copyright © 2021 Oleksii Kononov. All rights reserved.
//

import UIKit

class EmojiableViewController: UITableViewController {
    
    let objects = [
        Emoji(emoji: "😺", name: "Happy", description: "I'm happy", isFavourite: false),
        Emoji(emoji: "🚗", name: "driver", description: "I'm driving", isFavourite: false),
        Emoji(emoji: "🦷", name: "teeth", description: "Teeth", isFavourite: false)
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        self.title = "Emoji Reader"
        self.navigationItem.leftBarButtonItem = self.editButtonItem
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return objects.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "emojiCell", for: indexPath) as! EmojiTableViewCell
        
        let object = objects[indexPath.row]
        cell.set(object: object)
        
        return cell
    }
    
}
