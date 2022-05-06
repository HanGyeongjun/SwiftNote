//
//  UsefulLinksPage.swift
//  SwiftNote
//
//  Created by 한경준 on 2022/05/03.
//

import SwiftUI

struct UsefulLinksPage: View {
    var body: some View {
        
        ScrollView {
            VStack {

                UsefulLinksSection(usefulLinksSectionName: "Swift")
                UsefulLinksSection(usefulLinksSectionName: "Coding")
                UsefulLinksSection(usefulLinksSectionName: "Design")
                UsefulLinksSection(usefulLinksSectionName: "Etc")


            }
        }
    }
}

struct UsefulLinksPage_Previews: PreviewProvider {
    static var previews: some View {
        UsefulLinksPage()
    }
}
