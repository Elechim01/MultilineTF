//
//  ContentView.swift
//  MultilineTF
//
//  Created by Michele Manniello on 16/05/21.
//

import SwiftUI

struct ContentView: View {
    @State var txt = ""
    var body: some View {
        VStack(spacing: 15){
            MultiLineTF(txt: $txt)
                .border(Color.gray.opacity(0.5),width: 1)
            Button(action: {
                print(self.txt)
            }, label: {
                Text("Print Text")
                    .padding()
            }).background(Color.blue)
            .foregroundColor(.white)
            .clipShape(Capsule())
        }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
