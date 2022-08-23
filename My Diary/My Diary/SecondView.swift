//
//  SecondView.swift
//  My Diary
//
//  Created by Alya Mallik on 20/08/2022.
//

import Foundation
import SwiftUI
struct SecondView{
    let myC : Color
    let myS : String
    var body : some View {
        ZStack{
            myC.ignoresSafeArea()
            VStack{
                Text(myS)
            }
        }
    }
}

struct SecondView_Previews:
PreviewProvider
static var previews: some View {
    SecondView(myC: .green, myS: "hi")
}
