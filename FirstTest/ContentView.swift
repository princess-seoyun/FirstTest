//
//  ContentView.swift
//  FirstTest
//
//  Created by 박서윤 on 7/11/24.
//

import SwiftUI

struct ContentView: View {
    
    let name : String = "서윤"
    var age : Int = 25
    
    var body: some View {
        VStack{ // vertical 로 쌓는다는 뜻
            Text(name)
            Text("나이는 \(age) 살")
        }
    }
}

#Preview {
    ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
}
