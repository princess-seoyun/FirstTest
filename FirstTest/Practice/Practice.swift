//
//  Practice.swift
//  FirstTest
//
//  Created by 박서윤 on 8/4/24.
//

import SwiftUI

struct Practice: View {
    
    @State var menu : String? = "오늘 뭐 먹지"
//    let menus: [String] = ["불고기", "탕수육", "스시", "쌀국수"]
    let menus: [Food] = [.bulgogi, .tangsuyook, .sushi , .pho] // 이렇게 정의하면 좀 더 안전하게 배열에 값이 들어올 수 있음
    let menus2 : [String] = ["초콜릿" , "바나나우유"]
    
    enum Food : String { // Food 열거형을 String 으로 선언한 것
        case bulgogi = "불고기" // 불고기인 케이스 경우에는 "불고기" 라는 값을 넣는 것
        case tangsuyook = "탕수육"
        case sushi = "스시"
        case pho = "쌀국수"
    }
    
    var body: some View {
        VStack {
            
            if menu == "불고기" || menu == "스시" {
                Text("너무 맛있는 \(menu!)")
            } else {
                Text(menu!)
            }
            
//            Button(action: {
//                menu = "짬뽕 당첨"
//            }, label: {
//                Text("메뉴 고르기")
//            })
            
            Button(action: {
//                menu = menus.randomElement() // 랜덤으로 요소 가져오기
                // 참고로 randomElement()를 사용하려면 해당 변수에 ? 를 붙여서 nil 일 수도 있다는 가정을 해줘야 함
                // 그리고 ! 를 붙여서 강제 언래핑을 해줘야 하는데 이건 나중에 ...
                
                menu = menus.randomElement()?.rawValue
            }, label: {
                Text("랜덤으로 메뉴 뽑기")
            })
            
        }
    }
}

#Preview {
    Practice()
}
