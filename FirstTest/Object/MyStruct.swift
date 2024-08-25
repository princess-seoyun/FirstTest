//
//  MyStruct.swift
//  FirstTest
//
//  Created by 박서윤 on 8/25/24.
//

import SwiftUI

struct UserInfo {
    let name : String
    let age : Int?
    let email : String?
    let job : String?
    let hasPet: Bool
    
    // 함수도 정의할 수 있음
    func sayUserage() {
        print(age ?? 0)
    }
}

struct MyStruct: View {
    
    let userInfo : UserInfo
    
    var body: some View {
        
        Text(userInfo.name)
        Text(userInfo.age?.description ?? "0")
        Text(userInfo.email?.description ?? "none")
        Text(userInfo.job?.description ?? "no")
        Text(userInfo.hasPet.description)
            
        VStack {
            Button{
                sayMyName(with: userInfo.name)
            } label: {
                Text("click")
            }
            
            Button{
                userInfo.sayUserage()
            } label: {
                Text("user age")
            }
        }
        
    }
    
    func sayMyName(with name: String) {
        print(name)
    }
}

#Preview {
    MyStruct(userInfo: UserInfo(name: "seoyun", age: 25, email: "test@test.com", job: "developer", hasPet: true))
}
