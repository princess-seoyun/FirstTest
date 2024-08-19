//
//  MyOptional.swift
//  FirstTest
//
//  Created by 박서윤 on 8/19/24.
//

import SwiftUI

struct MyOptional: View {
    
    // 참고로 ? (물음표)를 붙이는 건데
    // nil 일 가능성이 있는 곳에 물음표를 붙여서 이 값일 수도 있고 아닐 수도 있다고 가정해 주는 것
    
    let name : String = "Seoyun"
    let name2 : String?
    let age : Int? = 25
    let hobby : String?
    
    var body: some View {
        Text(name)
        
        // ? 가 붙인 값을 처리하는 방법 2가지
        Text(age?.description ?? "1") // 1. 만약 age 값이 없으면 100 으로 처리
        if let age = age {
            Text(age.description) // 2. 'age 가 nil 이 아니라면'이라는 조건을 붙여서 Text로 부르기
        }
        
        Text(hobby!)
        Text(name2 ?? "none")
    }
}

#Preview {
    MyOptional(name2 : "jiyun" , hobby: "game")
}
