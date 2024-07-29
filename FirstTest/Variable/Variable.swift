//
//  ContentView.swift
//  FirstTest
//
//  Created by 박서윤 on 7/28/24.
//

import SwiftUI

struct Variable: View {
    
    // 대입연산자 = 오른쪽에 있는 것을 왼쪽에 넣는 것
    // 예를 들면 서윤이라는 이름을 name 이라는 상수에 넣은 것
    let name : String = "서윤" // 상수
    var age : Int = 25 // 변수
    var height: Double = 171.4
    let hasJob : Bool = true
    
    var anyNumber = 77
    var anyNumber2 = 10
    var anyNumber3 = 44
    
    var body: some View {
        VStack{ // vertical 로 쌓는다는 뜻
                // 참고로 VStack 안에는 10 개 이상의 텍스트를 넣을 수 없음
            Text(name)
            Text("나이는 \(age) 살")
            Text("키는 \(height)")
            Text("직장은 \(hasJob)")
            
            // 사칙연산자
            Text("\(anyNumber + age)")
            
            // 비교연산자
            // < <= > >= != == 가 있음
            Text("\(anyNumber2 > anyNumber3)") // anyNumber3 가 더 크므로 false 가 나옴
            
        }
    }
}

#Preview {
    Variable().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
}

