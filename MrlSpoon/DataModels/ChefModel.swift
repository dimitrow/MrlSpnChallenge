//
//  ChefModel.swift
//  MrlSpoon
//
//  Created by Gene Dimitrow on 10.08.21.
//

import Foundation
import Contentful

final class Chef: EntryDecodable, FieldKeysQueryable, Resource {
    
    var sys: Sys
    
    static let contentTypeId: String = "chef"
    
    //MARK: -  entry unique properties
    
    var name: String?
    
    enum FieldKeys: String, CodingKey {
        case name
    }
    
    public required init(from decoder: Decoder) throws {
        
        sys = try decoder.sys()
        
        let fields = try decoder.contentfulFieldsContainer(keyedBy: Chef.FieldKeys.self)
        self.name = try fields.decodeIfPresent(String.self, forKey: .name)
    }
}
