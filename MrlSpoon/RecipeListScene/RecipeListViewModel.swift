//
//  RecipeListViewModel.swift
//  MrlSpoon
//
//  Created by Gene Dimitrow on 10.08.21.
//

import UIKit

class RecipeListViewModel: RecipeListViewModelProtocol {
        
    weak var view: RecipeListViewDelegate?
    private let coordinator: RecipeListCoordinatorProtocol
    private let dataProvider: RecipesDataProvider
    
    var recipeList: [Recipe] = []
    
    init(view: RecipeListViewDelegate, coordinator: RecipeListCoordinatorProtocol, dataProvider: RecipesDataProvider) {
        
        self.view = view
        self.coordinator = coordinator
        self.dataProvider = dataProvider
    }
    
    func fetchRecipes() {
        
        dataProvider.fetchRecipes { [weak self] result in
                                    
            switch result {
            case .success(let recipes):
                self?.recipeList = recipes
                self?.view?.updateContent()
                break
            case .failure(let error):
                self?.view?.operationFailed(error)
                break
            }
        }
    }
    
    func routeToDetails(of recipe: Recipe) {
        
        coordinator.routeToDetails(of: recipe)
    }
}
