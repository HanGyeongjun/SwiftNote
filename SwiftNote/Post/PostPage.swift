//
//  PostPage.swift
//  SwiftNote
//
//  Created by 한경준 on 2022/05/03.
//

import SwiftUI

struct PostPage: View {
    
    @State var on = 0
    
    var body: some View {
        ScrollView {
            //이미지 넣기
            Image("\(PDA.postDataArr[on].postImage)")
                .resizable()
                .aspectRatio(1.0, contentMode: .fill)
                .frame(width: .infinity, height: 360.0)
                .clipped()
                .cornerRadius(10)
            
//            RoundedRectangle(cornerRadius: 16)
//                .foregroundColor(Color(UIColor.systemGray4))
//                .frame(height: 360.0)
            //제목
            Text("\(PDA.postDataArr[on].postTitle)")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .multilineTextAlignment(.leading)
                .frame(width: .infinity,
                       height: .infinity,
                       alignment: .leading)
                .padding(.top, 12.0)
            //날짜
            Text("\(PDA.postDataArr[on].postDate)")
                .padding(.top, 6.0)
            //강좌 링크
            Link(destination: URL(string: "\(PDA.postDataArr[on].postLink)")!) {
                ZStack {
                    RoundedRectangle(cornerRadius: 6)
                        .frame(width: 100, height: 25)
                        .foregroundStyle(Color(UIColor.systemBlue))
                    Text("Link")
                        .foregroundColor(.white)

                }
            }
            //본문
            Text("\(PDA.postDataArr[on].postText)")
                .padding(.top, 12.0)
                .frame(width: .infinity)
            
        }
        .padding(.horizontal, 30.0)

    }
    
    struct PostPage_Previews: PreviewProvider {
        static var previews: some View {
            PostPage()
        }
    }
}
