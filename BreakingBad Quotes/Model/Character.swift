//
//  Character.swift
//  BreakingBad Quotes
//
//  Created by Tiago Pinheiro on 02/11/2023.
//

import Foundation

struct Character: Decodable {
    let name: String
    let birthday: String
    let occupations: [String]
    let images: [URL]
    let aliases: [String]
    let portrayedBy: String
}
