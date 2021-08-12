//
//  RecipeDetailsViewModel.swift
//  MrlSpoon
//
//  Created by Gene Dimitrow on 12.08.21.
//

import UIKit

enum RecipeDetailsCellType {
    
    case recipeMain
    case recipeTags
    case recipeDescription
    
}


class RecipeDetailsViewModel: RecipeDetailsViewModelProtocol {
    
    weak var view: RecipeDetailsViewDelegate?
    
    private var recipe: Recipe
    var recipeDetailedCells: [UITableViewCell] = []
    
    init(view: RecipeDetailsViewDelegate, recipe: Recipe) {
        
        self.view = view
        self.recipe = recipe
    }
    
    func buildContent(for tableView: UITableView) {
        
        let recipeCellsFabric = RecipeCellsFabric()
        recipeDetailedCells.append(recipeCellsFabric.makeRecipeCells(for: tableView, recipe: recipe, of: .recipeMain))
        
        if !recipe.tags.isEmpty {
            
            recipeDetailedCells.append(recipeCellsFabric.makeRecipeCells(for: tableView, recipe: recipe, of: .recipeTags))
        }
        
        recipeDetailedCells.append(recipeCellsFabric.makeRecipeCells(for: tableView, recipe: recipe, of: .recipeDescription))
        self.view?.updateContent()
    }
}
