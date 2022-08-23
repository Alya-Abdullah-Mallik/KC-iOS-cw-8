//
//  ContentView.swift
//  My Diary
//
//  Created by Alya Mallik on 20/08/2022.
//

import SwiftUI

struct ContentView: View {
    let colors = [Color.mint.opacity(0.7), Color.pink.opacity(0.7), Color.purple.opacity(0.7), Color.red.opacity(0.7)]
    
    
    @State var myNote = ""
    @State var selected : Color
    
    var body: some View {
        NavigationView{
            ZStack{
                Color.indigo.opacity(0.5).ignoresSafeArea()
                VStack{
                    Spacer()
                    
                    Text("Choose you favorite color 🪐")
                        .font(.system(size: 25))
                    
                    HStack{
                        
                    ForEach(colors, id:\.self){color in
                        
                        Circle()
                            .fill(color)
                            .frame(width: 50, height: 50)
                        
                            .onTapGesture {
                                selected = color
                            }
                    }
                    }.padding()
                    Text("What do you want to write ? 👀")
                        .font(.system(size: 20))
                    
                    TextField("Write here", text: $myNote)
                        .frame(width: 400, height: 40)
                        .clipShape(Capsule())
                        .background(.gray)
                    
                    Spacer()
                    
                    NavigationLink(destination: SecondView(myC: selected, myS: myNote)){Text("Save")
                            .frame(width: 100, height: 40)
                            .cornerRadius(20)
                            .font(.system(size: 30)).background(.gray)
                        
                            .padding()
                }
            }
            .navigationTitle("My Daily Diary ☕️")
        }
    }
}
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView( selected: Color.pink)
    }
}

