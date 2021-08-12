//
//  RecipeDetailsContract.swift
//  MrlSpoon
//
//  Created by Gene Dimitrow on 12.08.21.
//

import Foundation

protocol RecipeDetailsViewDelegate: GenericViewDelegateProtocol, GenericFailureProtocol {
        
}

protocol RecipeDetailsViewModelProtocol: AnyObject {
    
    var recipe: Recipe { get set }
    
    func buildContent()
}

protocol RecipeDetailsCoordinatorProtocol: AnyObject {
    
}
