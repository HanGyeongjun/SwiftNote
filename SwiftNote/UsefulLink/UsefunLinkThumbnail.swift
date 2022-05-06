//
//  UsefunLinkThumbnail.swift
//  SwiftNote
//
//  Created by 한경준 on 2022/05/03.
//

import SwiftUI

struct UsefunLinkThumbnail: View {
    
    
    @State var on = 0
    
    var body: some View {
        Link(destination: URL(string: "\(LDA.usefulLinkDataArr[on].link)")!) {
            ZStack {
                Image("\(LDA.usefulLinkDataArr[on].linkImage)")
                    .resizable()
                    .aspectRatio(1.0, contentMode: .fill)
                    .frame(width: 180.0, height: 240.0)
                    .clipped()
                    .cornerRadius(16)
                
                //                RoundedRectangle(cornerRadius: 16)
                //                    .frame(width: 180.0, height: 240.0)
                //                    .foregroundColor(Color(UIColor.systemGray5))
                VStack {
                    //북마크 표시
                    if LDA.usefulLinkDataArr[on].linkBookmarked == true {
                        Image(systemName: "bookmark.fill")
                            .padding(.top, 8.0)
                            .frame(width: /*@START_MENU_TOKEN@*/20.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/20.0/*@END_MENU_TOKEN@*/)
                            .padding(.leading, 140.0)
                    }
                    else {
                        Image(systemName: "bookmark")
                            .padding(.top, 8.0)
                            .frame(width: /*@START_MENU_TOKEN@*/20.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/20.0/*@END_MENU_TOKEN@*/)
                            .padding(.leading, 140.0)

                    }
                    
                    Spacer()
                        .frame(height: 100.0)
                    //설명부 사각형
                    //                    ZStack {
                    //                        RoundedRectangle(cornerRadius: 8)
                    //                            .padding(.all, 10.0)
                    //                            .frame(width: 180.0, height: 120.0)
                    //                            .background(.thickMaterial)
                    
                    VStack {
                        //링크 이름
                        Text("\(LDA.usefulLinkDataArr[on].linkName)")
                            .font(.headline)
                            .fontWeight(.semibold)
                            .foregroundColor(Color(UIColor.label))
                            .multilineTextAlignment(.center)
                            .lineLimit(2)
                            .padding(.horizontal, 10.0)
                            .frame(width: 160.0)
                        //링크 설명
                        Text("\(LDA.usefulLinkDataArr[on].linkDescription)")
                            .foregroundColor(Color(UIColor.secondaryLabel))
                            .multilineTextAlignment(.center)
                            .lineLimit(3)
                            .padding(.horizontal, 10.0)
                            .frame(width: 160.0)
                    }
                    .frame(width: 160.0, height: 100.0)
                    .background(.ultraThinMaterial)
                    .cornerRadius(8)
                }
            }
        }
        .padding(.leading, 12.0)
        .padding(.bottom, 6.0)
    }
}


struct UsefunLinkThumbnail_Previews: PreviewProvider {
    static var previews: some View {
        UsefunLinkThumbnail()
            .previewInterfaceOrientation(.portraitUpsideDown)
    }
}
