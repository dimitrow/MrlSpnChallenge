//
//  RecipeDetailsCoordinator.swift
//  MrlSpoon
//
//  Created by Gene Dimitrow on 12.08.21.
//

import Foundation

class RecipeDetailsSceneCoordinator {

    var viewController: RecipeDetailsViewController?

    func initScene(_ recipe: Recipe) -> RecipeDetailsViewController {
        
        self.viewController = RecipeDetailsViewController()
        let viewModel = RecipeDetailsViewModel(view: self.viewController!, recipe: recipe)
        self.viewController?.viewModel = viewModel
        return viewController!
    }
}
