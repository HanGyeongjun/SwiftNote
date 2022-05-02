//
//  PostThumbnail.swift
//  SwiftNote
//
//  Created by 한경준 on 2022/04/29.
//

import SwiftUI

//struct Post {
//    let imageNema: String
//    let title: String
//    let date: String
//}

struct PostThumbnail: View {
    
//    var posts: [Post]
    
    var body: some View {
        ZStack {
            HStack {
                RoundedRectangle(cornerRadius: 6)
                    .frame(width: 94.0, height: 60.0)
                    .foregroundColor(Color/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                Spacer()
                    .frame(width: 12.0)
                Text("변수와 상수")
                    .font(/*@START_MENU_TOKEN@*/.title2/*@END_MENU_TOKEN@*/)
                    .fontWeight(.bold)
                Spacer()
                Text("2022년 4월 29일")
                    .fontWeight(.regular)
                    .foregroundColor(Color(UIColor.systemGray2))
                    .padding(/*@START_MENU_TOKEN@*/.trailing, 10.0/*@END_MENU_TOKEN@*/)
            }
            .padding(.vertical, 10.0)
            NavigationLink("", destination: PostPage())
    }
    }
}

struct PostThumbnail_Previews: PreviewProvider {
    static var previews: some View {
        PostThumbnail()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
