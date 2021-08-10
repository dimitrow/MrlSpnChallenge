//
//  RecipeListTableView.swift
//  MrlSpoon
//
//  Created by Gene Dimitrow on 10.08.21.
//

import UIKit

extension RecipeListViewController: UITableViewDelegate {

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: false)
        
        if let recipe = viewModel?.recipeList[indexPath.row] {
            
            viewModel?.routeToDetails(of: recipe)
        }
    }
}

extension RecipeListViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return viewModel?.recipeList.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let recipe = viewModel?.recipeList[indexPath.row] {
            
            return  RecipeListRecipeCellBuilder().buildCell(for: tableView, recipe: recipe)
        }
        
        return UITableViewCell()
    }
}
