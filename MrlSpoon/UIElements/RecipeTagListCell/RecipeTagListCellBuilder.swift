//
//  RecipeTagListCellBuilder.swift
//  MrlSpoon
//
//  Created by Gene Dimitrow on 12.08.21.
//

import UIKit

class RecipeTagListCellBuilder {
    
    func buildCell(for tableView: UITableView, recipe: Recipe) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: RecipeTagListCell.identifier) as! RecipeTagListCell
        let mappedTags = recipe.tags.compactMap({$0.name})
        
        cell.recipeTagsView.tagBackgroundColor = .msBackground
        cell.recipeTagsView.textColor = .msLightText
        cell.recipeTagsView.textFont = UIFont.systemFont(ofSize: 22)
        cell.recipeTagsView.alignment = .leading
        cell.recipeTagsView.cornerRadius = 3.0
        cell.recipeTagsView.marginX = 8
        cell.recipeTagsView.marginY = 6
        cell.recipeTagsView.paddingY = 8
        cell.recipeTagsView.paddingX = 12
        cell.recipeTagsView.addTags(mappedTags)
        
        return cell
    }
}
