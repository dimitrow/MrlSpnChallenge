//
//  RecipeDescriptionCellBuilder.swift
//  MrlSpoon
//
//  Created by Gene Dimitrow on 12.08.21.
//

import UIKit

class RecipeDescriptionCellBuilder {
    
    func buildCell(for tableView: UITableView, recipe: Recipe) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: RecipeDescriptionCell.identifier) as! RecipeDescriptionCell
        cell.descriptionLabel.text = recipe.description 
        return cell
    }
}
