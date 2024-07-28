//
//  ContentView.swift
//  FirstTest
//
//  Created by 박서윤 on 7/11/24.
//

import SwiftUI

struct ContentView: View {
    
    let name : String = "서윤" // 상수
    var age : Int = 25 // 변수
    var height: Double = 171.4
    let hasJob : Bool = true
    
    var body: some View {
        VStack{ // vertical 로 쌓는다는 뜻
            Text(name)
            Text("나이는 \(age) 살")
            Text("키는 \(height)")
            Text("직장은 \(hasJob)")
        }
    }
}

#Preview {
    ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
}
