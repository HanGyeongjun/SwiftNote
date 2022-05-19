//
//  BookMarkPage.swift
//  SwiftNote
//
//  Created by 한경준 on 2022/05/03.
//

import SwiftUI

struct BookMarkPage: View {
    var body: some View {
        Picker(selection: /*@START_MENU_TOKEN@*/.constant(1)/*@END_MENU_TOKEN@*/, label: Text("Picker")) {
            Text("유용한 링크").tag(1)
            Text("글").tag(2)
        }
        .pickerStyle(SegmentedPickerStyle())
        .navigationTitle("책갈피")
    }
}

struct BookMarkPage_Previews: PreviewProvider {
    static var previews: some View {
        BookMarkPage()
    }
}
