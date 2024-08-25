//
//  MyClosure.swift
//  FirstTest
//
//  Created by 박서윤 on 8/25/24.
//

import SwiftUI

struct MyClosure: View {
    
    // 이름이 없는 함수 = 클로져
    // 기본 형태
//    { (매개변수 목록) -> 반환 타입 in
//        실행할 코드
//    }
    
    // 쓰는 이유?
    // 자주 쓰지 않고 한번만 사용하기 위한 일회용 함수를 만들기 위해 ?
    
    let myFirstClosure : () -> Void = { print("안녕")}
    
    func sayHi() -> Void {
        print("Hi")
    }
    
    // 트레일링 클로져
    // 함수의 마지막 인자가 클로저일 때, 함수 호출 시 그 클로저를 함수 괄호 () 밖에 작성할 수 있도록 하는 문법
    func sayBye(action: ()->()) -> Void {
        print("Bye")
    }
    
    
    var body: some View {
        Button(action: myFirstClosure, label: {
            Text("Hit Me")
        })
        
        
        Button(action: sayHi, label: {
            Text("Hit")
        })
        
        Button{
            print("test")
        } label: {
            Text("Button")
        }
        
        Button {
            sayBye {
                
            }
        } label : {
            Text("Bye Button")
        }
    }
}

#Preview {
    MyClosure()
}
