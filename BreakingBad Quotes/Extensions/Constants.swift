//
//  Constants.swift
//  BreakingBad Quotes
//
//  Created by Tiago Pinheiro on 02/11/2023.
//

import Foundation

enum Constants {
    static let bbName = "Breaking Bad"
    static let bcsName = "Better Call Saul"
    
    static let previewCharacter: Character = {
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        
        let data = try! Data(contentsOf: Bundle.main.url(forResource: "samplecharacter", withExtension: "json")!)
        
        return try! decoder.decode([Character].self, from: data)[0]
    }()
}

extension String {
    var replaceSpaceWithPlus: String {
        self.replacingOccurrences(of: " ", with: "+")
    }
    
    var lowerCasedNoWhiteSpaces: String {
        self.lowercased().filter { $0 != " " }
    }
    
    var noSpaces: String {
        self.replacingOccurrences(of: " ", with: "")
    }
}
