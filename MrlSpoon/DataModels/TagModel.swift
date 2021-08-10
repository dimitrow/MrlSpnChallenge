//
//  TagModel.swift
//  MrlSpoon
//
//  Created by Gene Dimitrow on 10.08.21.
//

import Foundation
import Contentful

final class Tag: EntryDecodable, FieldKeysQueryable, Resource {
    
    var sys: Sys
    
    static let contentTypeId: String = "tag"
    
    //MARK: -  entry unique properties
    
    var name: String?
    
    enum FieldKeys: String, CodingKey {
        case name
    }
    
    required init(from decoder: Decoder) throws {
        
        sys = try decoder.sys()
        
        let fields = try decoder.contentfulFieldsContainer(keyedBy: Tag.FieldKeys.self)
        name = try fields.decodeIfPresent(String.self, forKey: .name)
    }
}
