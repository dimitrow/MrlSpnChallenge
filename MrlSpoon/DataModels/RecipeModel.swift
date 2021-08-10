//
//  RecipeModel.swift
//  MrlSpoon
//
//  Created by Gene Dimitrow on 10.08.21.
//

import Foundation
import Contentful

final class Recipe: EntryDecodable, FieldKeysQueryable, Resource {
    
    var sys: Sys
    
    static let contentTypeId: String = "recipe"
    
    //MARK: -  entry unique properties
    
    let title: String?
    var photo: Asset?
    let calories: Int?
    let description: String?
    
    //MARK: -  relationship fields
    
    var chef: Chef?
    var tags: [Tag] = []
    
    enum FieldKeys: String, CodingKey {
        case title
        case photo
        case calories
        case description
        case chef
        case tags
    }
    
    public required init(from decoder: Decoder) throws {
        
        sys = try decoder.sys()
        
        let fields = try decoder.contentfulFieldsContainer(keyedBy: Recipe.FieldKeys.self)
        
        self.title = try fields.decodeIfPresent(String.self, forKey: .title)
        self.calories = try fields.decodeIfPresent(Int.self, forKey: .calories)
        self.description = try fields.decodeIfPresent(String.self, forKey: .description)
        
        try fields.resolveLink(forKey: .photo, decoder: decoder) { [weak self] photo in
            self?.photo = photo as? Asset
        }
        
        try fields.resolveLink(forKey: .chef, decoder: decoder) { [weak self] linkedChef in
            self?.chef = linkedChef as? Chef
        }
        
        try fields.resolveLinksArray(forKey: .tags, decoder: decoder) { [weak self] linkedTags in
            self?.tags = linkedTags as? [Tag] ?? []
        }
    }
}
