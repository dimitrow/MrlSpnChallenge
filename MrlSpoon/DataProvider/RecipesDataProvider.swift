//
//  RecipesDataProvider.swift
//  MrlSpoon
//
//  Created by Gene Dimitrow on 10.08.21.
//

import Foundation
import Contentful

class RecipesDataProvider {
    
    private let client: Client
    
    init() {
        
        self.client = Client(spaceId: "kk2bw5ojx476",
                             environmentId: "master",
                             accessToken: "7ac531648a1b5e1dab6c18b0979f822a5aad0fe5f1109829b8a197eb2be4b84c",
                             contentTypeClasses: [Recipe.self, Chef.self, Tag.self])
        
    }
    
    func fetchRecipes(_ completion: @escaping (Result<Array<Recipe>, Error>) -> Void) {
        
        let query = QueryOn<Recipe>.where(contentTypeId: "recipe")
        
        client.fetchArray(of: Recipe.self, matching: query) { (result: Result<HomogeneousArrayResponse<Recipe>, Error>) in
            switch result {
            case .success(let entriesArrayResponse):
                completion(.success(entriesArrayResponse.items))
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
}
