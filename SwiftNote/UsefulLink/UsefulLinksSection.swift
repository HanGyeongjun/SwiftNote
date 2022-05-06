//
//  UsefulLinksSection.swift
//  SwiftNote
//
//  Created by 한경준 on 2022/05/03.
//

import SwiftUI

struct UsefulLinksSection: View {
    
    var usefulLinksSectionName: String = ""
    
    var body: some View {
        VStack {
            //섹션 시작
            Divider()
                .padding(.horizontal, 18.0)
            //섹션 제목
            HStack {
                Text("\(usefulLinksSectionName)")
                    .font(.title)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .padding(.leading, 24.0)
                Spacer()
            }
            //링크 횡스크롤
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach (0..<LDA.usefulLinkDataArr.count, id: \.self) { num in
                        if usefulLinksSectionName == LDA.usefulLinkDataArr[num].linkSection {
                            UsefunLinkThumbnail(on: num)

                        }
                    }
                        .navigationTitle("유용한 링크")
                }
                .padding(.bottom, 6.0)
            }
        }
    }
}

struct UsefulLinksSection_Previews: PreviewProvider {
    static var previews: some View {
        UsefulLinksSection()
    }
}
