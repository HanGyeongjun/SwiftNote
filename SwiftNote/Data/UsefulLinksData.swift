//
//  UsefulLinksData.swift
//  SwiftNote
//
//  Created by 한경준 on 2022/05/03.
//

import Foundation

struct UsefulLinksData: Identifiable, Decodable {
    var id: Int
    var linkSection: String
    var link: String
    var linkImage: String
    var linkName: String
    var linkDescription: String
    var linkBookmarked: Bool
}

struct LDA {
    static var usefulLinkDataArr: [UsefulLinksData] = LDA.load("UsefulLinksData.json")
    
    static func load<T: Decodable>(_ filename: String) -> T {
        let data: Data
        
        guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
        else {
            fatalError("")
        }
        
        do {
            data = try Data(contentsOf: file)
        } catch {
            fatalError("")
        }
        
        do {
            let decoder = JSONDecoder()
            return try decoder.decode(T.self, from: data)
        } catch {
            fatalError("")
        }
    }
}
