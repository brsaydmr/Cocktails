//
//  VodkaTableViewCell.swift
//  CocktailBar
//
//  Created by Barış Aydemir on 27.08.2023.
//

import UIKit

class VodkaTableViewCell: UITableViewCell {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var resim: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        resim.layer.cornerRadius = 20.0
        resim.clipsToBounds = true
        
        label.layer.cornerRadius = 8.0
        label.clipsToBounds = true

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
