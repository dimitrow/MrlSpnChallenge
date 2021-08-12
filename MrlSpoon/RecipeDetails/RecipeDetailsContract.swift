//
//  RecipeDetailsContract.swift
//  MrlSpoon
//
//  Created by Gene Dimitrow on 12.08.21.
//

import UIKit

protocol RecipeDetailsViewDelegate: GenericViewDelegateProtocol, GenericFailureProtocol {
        
}

protocol RecipeDetailsViewModelProtocol: AnyObject {
    
//    var recipe: Recipe { get set }
    var recipeDetailedCells: [UITableViewCell] { get set}
    func buildContent(for tableView: UITableView)
}

protocol RecipeDetailsCoordinatorProtocol: AnyObject {
    
}
