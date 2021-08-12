//
//  RecipeDescriptionCell.swift
//  MrlSpoon
//
//  Created by Gene Dimitrow on 12.08.21.
//

import UIKit

class RecipeDescriptionCell: UITableViewCell {

    @IBOutlet weak var descriptionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        descriptionLabel.textColor = .msLightText
        backgroundColor = .msBackground
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }
    
}
