//
//  ContentView.swift
//  SwiftNote
//
//  Created by 한경준 on 2022/04/28.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationView {
            List {
                
                //둘러보기 섹션
                Section("둘러보기") {
                    NavigationLink(destination: UsefulLinksPage(), label: {Label("유용한 링크", systemImage: "safari")}
                    )
                    NavigationLink(destination: BookMarkPage(), label: {Label("책갈피", systemImage: "bookmark")}
                    )
                }
                
                //swift 공부 섹션
                Section("Swift 공부") {
                    NavigationLink(
                        destination: SwiftOrgPage(),
                        label: {Label("Swift.org", systemImage: "swift")}
                    )
                    NavigationLink(
                        destination: YagomBasicPage(),
                        label: {Label("Yagom Basic", systemImage: "text.book.closed")}
                    )
                }
                
                //워크샵 섹션
                Section("WorkShops") {
                    NavigationLink(destination: TechWorkshopPage(), label: {Label("Tech WorkShop", systemImage: "hammer")}
                    )
                    NavigationLink(destination: DesignWorkshopPage(), label: {Label("Design WorkShop", systemImage: "paintbrush")}
                    )
                }
                
                //이벤트 섹션, 추가 예정
                Section("Events") {
                    
                }
            }
            .listStyle(SidebarListStyle())
            .navigationTitle("Swift Note")
            

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.landscapeRight)
    }
}
