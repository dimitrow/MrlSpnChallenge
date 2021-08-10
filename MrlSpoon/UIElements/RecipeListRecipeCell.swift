//
//  RecipeListRecipeCell.swift
//  MrlSpoon
//
//  Created by Gene Dimitrow on 10.08.21.
//

import UIKit

class RecipeListRecipeCell: UITableViewCell {

    @IBOutlet weak var recipeImageView: UIImageView!
    @IBOutlet weak var recipeTitleLabel: UILabel!
    @IBOutlet weak var titleContainerView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
            
        titleContainerView.backgroundColor = .white
        recipeTitleLabel.textColor = .msDarkText
        titleContainerView.makeCornerRounded(with: 10)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
}
