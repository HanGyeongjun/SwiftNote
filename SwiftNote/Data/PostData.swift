//
//  data.swift
//  SwiftNote
//
//  Created by 한경준 on 2022/05/04.
//

import Foundation

struct PostData: Identifiable, Decodable{
    var id: Int
    var postSection: String
    var postTitle: String
    var postImage: String
    var postLink: String
    var postDate: String
    var postText: String
    var postBookmarked: Bool
}


struct  PDA{
    static var postDataArr: [PostData] = PDA.load("postData.json")
    
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



