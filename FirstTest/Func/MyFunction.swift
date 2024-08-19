//
//  MyFunction.swift
//  FirstTest
//
//  Created by 박서윤 on 8/4/24.
//

import SwiftUI

struct MyFunction: View {
    
    @State var myMind : String = "nothing"
    @State var isChangedMind : Bool = false
    
    var body: some View {
        VStack {
            Text(myMind)
            // toggle() : 스위치라고 생각하면 됨
            // ex) false -> true, true -> false 로
            Button(action: {
                // action 하면 toggle (즉, 값이 스위치가 되면서)
                isChangedMind.toggle()
                
                // getMind 함수를 만들어서 사용하자
                myMind = getMind(with: isChangedMind)
                
                // 아래 내용으로 함수를 만들어보자
                //                // isChangeMind 가 true 라면
                //                if isChangedMind {
                //                    myMind = "always open"
                //                } else { // 반대로 false 라면
                //                    myMind = "but closed"
                //                }
                
            }, label: {
                Text("change")
            })
        }
    }
    
    func getMind(with isChangedMind : Bool) -> String { // 파라미터로는 bool 값을 받고 return 은 String 타입으로 해 준다는 것
        if isChangedMind {
            return "always open"
        } else {
            return "but closed"
        }
    }
}

#Preview {
    MyFunction()
}
