//
//  RecipeTagListCell.swift
//  MrlSpoon
//
//  Created by Gene Dimitrow on 12.08.21.
//

import UIKit
import TagListView

class RecipeTagListCell: UITableViewCell {

    @IBOutlet weak var recipeTagsView: TagListView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
}
