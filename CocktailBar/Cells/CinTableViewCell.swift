//
//  CinTableViewCell.swift
//  CocktailBar
//
//  Created by Barış Aydemir on 27.08.2023.
//

import UIKit

class CinTableViewCell: UITableViewCell {

    @IBOutlet weak var resim: UIImageView!
    @IBOutlet weak var label: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        resim.layer.cornerRadius = 20.0
        resim.clipsToBounds = true
        
        label.layer.cornerRadius = 8.0
        label.clipsToBounds = true

        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
