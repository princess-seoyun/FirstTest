//
//  Variable.swift
//  FirstTest
//
//  Created by 박서윤 on 7/29/24.
//

import SwiftUI

struct Variable: View {
    
    // Array , Dictionary, Set
    let name = "seoyun"
    let name2 = "seoyun2"
    let name3 = "seoyun3"
    
    // 빈 배열 생성
    var emtpyArray : [String] = []
    let names = ["s","e","o"] // 배열은 나열이므로 순서대로 나옴
    
    // 빈 딕셔너리 생성
    var emptyDict: [String: String] = [:]
    let EngKrDictionary = ["Apple":"사과", "Banana" : "바나나"]
    
    // 빈 Set 생성
    var emptySet: Set<String> = []
    let houseAnimals : Set = ["😆", "🙇🏻‍♀️","🙈", "😆"] // 만약 중복으로 들어가도 사라짐
    let farmAnimals : Set = ["😆","🫡"]

    
    var body: some View {
        VStack {
            Text(names[1])
            Text(EngKrDictionary["Apple"]!)
            Text(houseAnimals.intersection(farmAnimals).description) // 교집합
            Text(houseAnimals.union(farmAnimals).description) // 합집합
        }
    }
}

#Preview {
    Variable()
}
