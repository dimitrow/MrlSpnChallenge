//
//  RecipeMainCell.swift
//  MrlSpoon
//
//  Created by Gene Dimitrow on 12.08.21.
//

import UIKit

class RecipeMainCell: UITableViewCell {

    @IBOutlet weak var recipeImageView: UIImageView!
    @IBOutlet weak var recipeTitleLabel: UILabel!
    @IBOutlet weak var chefNameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        recipeTitleLabel.textColor = .msDarkText
        chefNameLabel.textColor = .msLightText
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
}
