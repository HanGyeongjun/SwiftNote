//
//  BookMarkPage.swift
//  SwiftNote
//
//  Created by 한경준 on 2022/05/03.
//

import SwiftUI

struct BookMarkPage: View {
    var body: some View {
        Picker(selection: /*@START_MENU_TOKEN@*/.constant(1)/*@END_MENU_TOKEN@*/, label: /*@START_MENU_TOKEN@*/Text("Picker")/*@END_MENU_TOKEN@*/) {
            /*@START_MENU_TOKEN@*/Text("1").tag(1)/*@END_MENU_TOKEN@*/
            /*@START_MENU_TOKEN@*/Text("2").tag(2)/*@END_MENU_TOKEN@*/
        }
        .navigationTitle("책갈피")
    }
}

struct BookMarkPage_Previews: PreviewProvider {
    static var previews: some View {
        BookMarkPage()
    }
}
