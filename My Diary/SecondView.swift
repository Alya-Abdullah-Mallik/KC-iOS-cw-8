//
//  SecondView.swift
//  My Diary
//
//  Created by Alya Mallik on 20/08/2022.
//

import SwiftUI

struct SecondView: View {
    let myC : Color
    let myS : String
    var body : some View{
        ZStack{
            myC.ignoresSafeArea()
            VStack{
                Text(myS)
            }
        }
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView(myC: Color.pink.opacity(0.5), myS: "Hi")
            .previewDevice("iphone 11")
    }
}
