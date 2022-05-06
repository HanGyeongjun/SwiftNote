//
//  SwiftOrgPage.swift
//  SwiftNote
//
//  Created by 한경준 on 2022/04/28.
//

import SwiftUI

struct SwiftOrgPage: View {
    var body: some View {
        PostTumbnailPage(viewTitle: "Swift.org", sectionName: "swift.org")
    }
}

struct SwiftOrgPage_Previews: PreviewProvider {
    static var previews: some View {
        SwiftOrgPage()
            .previewInterfaceOrientation(.landscapeRight)
    }
}
