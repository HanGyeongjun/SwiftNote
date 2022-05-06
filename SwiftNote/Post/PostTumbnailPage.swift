//
//  PostTumbnailPage.swift
//  SwiftNote
//
//  Created by 한경준 on 2022/05/05.
//

import SwiftUI

struct PostTumbnailPage: View {
    
    var viewTitle: String
    var sectionName: String
    
    var body: some View {
        VStack {
            List {
                ForEach (0..<PDA.postDataArr.count, id: \.self) { num in
                    if sectionName == PDA.postDataArr[num].postSection {
                    PostThumbnail(on: num)
                    }
                }
            }
        }
        .navigationTitle("\(viewTitle)")
    }
}

struct PostTumbnailPage_Previews: PreviewProvider {
    static var previews: some View {
        PostTumbnailPage(viewTitle: "String", sectionName: "yagom")
    }
}
