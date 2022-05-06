//
//  PostThumbnail.swift
//  SwiftNote
//
//  Created by 한경준 on 2022/04/29.
//

import SwiftUI


struct PostThumbnail: View {
    
    @State var on = 0
    
    var body: some View {
        
        NavigationLink(destination: PostPage(on: on)) {
            HStack {
                //포스트 이미지
                
                Image("\(PDA.postDataArr[on].postImage)")
                    .resizable()
                    .aspectRatio(1.0, contentMode: .fill)
                    .frame(width: 94.0, height: 60.0)
                    .clipped()
                    .cornerRadius(6)
                
//                RoundedRectangle(cornerRadius: 6)
//                    .frame(width: 94.0, height: 60.0)
                    
                Spacer()
                    .frame(width: 18.0)
                //포스트 제목
                Text("\(PDA.postDataArr[on].postTitle)")
                    .font(/*@START_MENU_TOKEN@*/.title2/*@END_MENU_TOKEN@*/)
                    .fontWeight(.bold)
                Spacer()
                //북마크 표시
                if PDA.postDataArr[on].postBookmarked == true {
                    Image(systemName: "bookmark.fill")
                        .foregroundColor(Color(UIColor.systemBlue))
                        .padding(.trailing, 6.0)
                }
                //날짜
                Text("\(PDA.postDataArr[on].postDate)")
                    .fontWeight(.regular)
                    .foregroundColor(Color(UIColor.systemGray2))
//                    .padding(.trailing, 24.0)
            }
            .padding(.vertical, 10.0)
        }
    }
}

struct PostThumbnail_Previews: PreviewProvider {
    static var previews: some View {
        PostThumbnail()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
