//
//  RecipeDetailsTableView.swift
//  MrlSpoon
//
//  Created by Gene Dimitrow on 12.08.21.
//

import UIKit

extension RecipeDetailsViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return viewModel?.recipeDetailedCells.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        return  viewModel?.recipeDetailedCells[indexPath.row] ?? UITableViewCell()
    }
}

class RecipeCellsFabric {
    
    func makeRecipeCells(for tableView: UITableView, recipe: Recipe, of type: RecipeDetailsCellType) -> UITableViewCell {
                
        switch type {
        case .recipeMain:
            return RecipeMainCellBuilder().buildCell(for: tableView, recipe: recipe)
        case .recipeDescription:
            return RecipeDescriptionCellBuilder().buildCell(for: tableView, recipe: recipe)
        case .recipeTags:
            return RecipeTagListCellBuilder().buildCell(for: tableView, recipe: recipe)
        }
    }
}
