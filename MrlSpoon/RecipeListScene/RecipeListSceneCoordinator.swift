//
//  RecipeListSceneCoordinator.swift
//  MrlSpoon
//
//  Created by Gene Dimitrow on 10.08.21.
//

import UIKit

class RecipeListSceneCoordinator {

    var viewController: RecipeListViewController?

    func initScene(_ dataProvider: RecipesDataProvider) -> RecipeListViewController {
        
        self.viewController = RecipeListViewController()
        let viewModel = RecipeListViewModel(view: self.viewController!, coordinator: self, dataProvider: dataProvider)
        self.viewController?.viewModel = viewModel
        return viewController!
    }
}

extension RecipeListSceneCoordinator: RecipeListCoordinatorProtocol {
    
    func routeToDetails(of recipe: Recipe) {
        
        if let navigationController = self.viewController?.navigationController {
            
            let detailsViewController = RecipeDetailsSceneCoordinator().initScene(recipe)
            
            navigationController.pushViewController(detailsViewController, animated: true)
        }
    }
}
