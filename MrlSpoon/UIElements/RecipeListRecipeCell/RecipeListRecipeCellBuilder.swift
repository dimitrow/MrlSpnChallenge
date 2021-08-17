//
//  RecipeListRecipeCellBuilder.swift
//  MrlSpoon
//
//  Created by Gene Dimitrow on 10.08.21.
//

import UIKit
import SDWebImage

class RecipeListRecipeCellBuilder {
    
    func buildCell(for tableView: UITableView, recipe: Recipe) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: RecipeListRecipeCell.identifier) as? RecipeListRecipeCell
        
        cell?.recipeTitleLabel.text = recipe.title ?? "Sorry, it seems recipe has no name yet"
        
        if let imageURL = recipe.photo?.file?.url {
            
            cell?.recipeImageView.sd_setImage(with: imageURL, placeholderImage: nil) { (image, error, cache, url) in
                
                cell?.recipeImageView.image  = image
            }
        }
        
        return cell ?? UITableViewCell()
    }
}
