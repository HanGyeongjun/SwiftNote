//
//  PostPage.swift
//  SwiftNote
//
//  Created by 한경준 on 2022/05/03.
//

import SwiftUI

struct PostPage: View {
    
    let title: String = "이름짓기, 콘솔로그 문자열 보간"
    
    var body: some View {
        ScrollView {
            RoundedRectangle(cornerRadius: 16)
                .frame(height: 300.0)
            
            Text("\(title)")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .multilineTextAlignment(.leading)
                .padding(.vertical)
            
            Text("""
# 이름짓기

스위프트는 camelcase 사용

변수, 상수, 함수는 소문자로 시작하는 lower camel case

```swift
thisIsVar
```

클래스, 구조체, 열거형, 익스텐션 같은 타입 이름은 대문자로 시작하는 upper camel case

```swift
ThisIsClass
```

대소문자 구분!

---

콘솔로그 기록

```swift
print
```

단순 문자열 출력

```swift
dump
```

인스턴스의 자세한 설명(값, property)까지 출력해줌

---

## 문자열 보간

문자열 내에 변수 혹은 상수의 실질적인 값을 표현하기 위해 사용
""")
                
        }
    }
    
    struct PostPage_Previews: PreviewProvider {
        static var previews: some View {
            PostPage()
        }
    }
}
