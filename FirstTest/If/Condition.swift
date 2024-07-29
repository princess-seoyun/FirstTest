//
//  Condition.swift
//  FirstTest
//
//  Created by 박서윤 on 7/29/24.
//

import SwiftUI

struct Condition: View {
    var body: some View {
        
        var num = 100
        
        if num % 2 == 0 {
            Text("짝수")
        }
        else {
            Text("홀수")
        }
        
        
        
    }
}

#Preview {
    Condition().previewLayout(.device)
}
