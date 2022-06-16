//
//  ContentView.swift
//  MyCard
//
//  Created by Donna on 2022/06/15.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Image("GreenBackground")
                .resizable()
                .ignoresSafeArea(.all)
            VStack {
                Image("DiceeLogo")
                Spacer()
                HStack {
                    DiceView(n:1)
                    DiceView(n:1)
                }
                .padding(.horizontal)
                Spacer()
                Button {
                    
                } label: {
                    Text("Roll")
                        .font(.system(size: 50))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .padding(.horizontal)
                }
                .background(Color.red)
                
            }
        }
        
    }
}

struct DiceView: View {
    let n: Int
    var body: some View {
        Image("Dice\(n)")
            .resizable()
            .aspectRatio(1,contentMode: .fit)
            .padding(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


