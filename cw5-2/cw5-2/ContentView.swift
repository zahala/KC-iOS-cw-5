//
//  ContentView.swift
//  cw5-2
//
//  Created by Zahraa Jassem on 12/08/2022.
//

import SwiftUI

struct ContentView: View {
    @State var pokeBader = ["Blue","Red","Green","Black","Light Green","Darck Blue"]
    @State var newItem = ""
    var body: some View {
        VStack{
            List(pokeBader,id:\.self){ i in
            HStack{
                Image(i)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                Text(i)
              }
            }
            
            HStack{
                Button {
                    pokeBader
                        .append(newItem)
                } label: {
                    Image(systemName: "plus")
                        .frame(width: 60, height: 60)
                        .foregroundColor(.white)
                        .background(.green)
                        .cornerRadius(10)
                }
                TextField("New Items", text: $newItem)
                
                Button {
                    pokeBader.remove(at: 0)
                } label: {
                  Image(systemName:"minus" )
                        .frame(width: 60, height: 60)
                        .foregroundColor(.white)
                        .background(.red)
                        .cornerRadius(10)
                    
                }
                
                    
                
            }.padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 13")
    }
}
