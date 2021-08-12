//
//  RecipeListContract.swift
//  MrlSpoon
//
//  Created by Gene Dimitrow on 10.08.21.
//

import UIKit

protocol RecipeListViewDelegate: GenericViewDelegateProtocol, GenericFailureProtocol {
        
}

protocol RecipeListViewModelProtocol: AnyObject {
    
    var recipeList: [Recipe] { get set }

    func fetchRecipes()
    func routeToDetails(of recipe: Recipe)
}

protocol RecipeListCoordinatorProtocol: AnyObject {
    
    func routeToDetails(of recipe: Recipe)
}
