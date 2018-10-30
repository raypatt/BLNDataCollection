//
//  UIEntryCellTableViewCell.swift
//  
//
//  Created by Ray Patt on 4/5/18.
//

import UIKit

class UIEntryCellTableViewCell: UITableViewCell {
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var entry: UITextField!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
  
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
