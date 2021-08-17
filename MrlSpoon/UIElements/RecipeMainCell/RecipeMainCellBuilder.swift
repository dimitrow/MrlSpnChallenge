//
//  RecipeMainCellBuilder.swift
//  MrlSpoon
//
//  Created by Gene Dimitrow on 12.08.21.
//

import UIKit
import SDWebImage

class RecipeMainCellBuilder {
    
    func buildCell(for tableView: UITableView, recipe: Recipe) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: RecipeMainCell.identifier) as? RecipeMainCell
        
        cell?.recipeTitleLabel.text = recipe.title ?? "Sorry, it seems recipe has no name yet"
        cell?.chefNameLabel.isHidden = true
        
        if let chefName = recipe.chef?.name {
            
            cell?.chefNameLabel.isHidden = false
            cell?.chefNameLabel.text = "by Chef: \(chefName)"
        }
        
        if let imageURL = recipe.photo?.file?.url {
            
            cell?.recipeImageView.sd_setImage(with: imageURL, placeholderImage: nil) { (image, error, cache, url) in
                
                cell?.recipeImageView.image  = image
            }
        }
        
        return cell ?? UITableViewCell()
    }
}
