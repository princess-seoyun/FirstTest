//
//  MyEnum.swift
//  FirstTest
//
//  Created by 박서윤 on 8/4/24.
//

import SwiftUI

struct MyEnum: View {
    
//    @State var menu : String = "pork"
    @State var menu : Menu = .beef
    
    enum Menu {
        case beef, pork, chicken
    }
    
    var body: some View {
        
//        if menu == "beef" {
//            Text("오늘 메뉴는 소고기")
//        } else if menu == "pork" {
//            Text("오늘 메뉴는 돼지고기")
//        } else {
//            Text("오늘 뭐 먹지")
//        }
        
        if menu == .beef {
            Text("오늘 메뉴는 소고기")
        } else if menu == .pork {
            Text("오늘 메뉴는 돼지고기")
        } else if menu == .chicken {
            Text("오늘 메뉴는 닭고기")
        } else {
            Text("오늘 뭐 먹지")
        }


    }
}

#Preview {
    MyEnum()
}
