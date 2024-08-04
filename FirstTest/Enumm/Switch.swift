//
//  Switch.swift
//  FirstTest
//
//  Created by 박서윤 on 8/4/24.
//

import SwiftUI

struct Switch: View {
    
//    참고로 열거형이나 @State 는 body 안에 선언하면 안 됨
//    @State var menu : String = "pork"
    @State var menu : Menu = .pork
    
    enum Menu {
        case beef, pork, chicken
    }
    var body: some View {
        
        VStack{
            switch menu {
            case .pork, .beef: // 케이스 조건을 여러개 달 수 있음
                Text("오늘 메뉴는 돼지고기나 소고기")
//            case .beef:
//                Text("오늘 메뉴는 소고기")
            case .chicken:
                Text("오늘 메뉴는 닭고기")
            default:
                Text("메뉴 없어")
            }
            
    //        switch menu {
    //        case "pork":
    //            Text("오늘 메뉴는 돼지고기")
    //        default: // 스위치문에는 모든 케이스에 해당이 안 될 경우를 대비해 디폴트 값이 필수로 지정되어야 함
    //            Text("메뉴를 골라주세요")
    //        }
        }
    }
}

#Preview {
    Switch()
}
