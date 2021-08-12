//
//  RecipeDetailsViewModel.swift
//  MrlSpoon
//
//  Created by Gene Dimitrow on 12.08.21.
//

import Foundation

class RecipeDetailsViewModel: RecipeDetailsViewModelProtocol {
    
    weak var view: RecipeDetailsViewDelegate?
    var recipe: Recipe
        
    init(view: RecipeDetailsViewDelegate, recipe: Recipe) {
        
        self.view = view
        self.recipe = recipe
    }
    
    func buildContent() {
        
    }
}
