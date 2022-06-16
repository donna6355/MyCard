//
//  ContentView.swift
//  MyCard
//
//  Created by Donna on 2022/06/15.
//

import SwiftUI

struct ContentView: View {
    //struct is immutable add @State keyword to let struct rebuild it upon changes
    @State var leftDiceNum: Int = 1
    @State var rightDiceNum: Int = 1
    
    
    var body: some View {
        ZStack{
            Image("GreenBackground")
                .resizable()
                .ignoresSafeArea(.all)
            VStack {
                Image("DiceeLogo")
                Spacer()
                HStack {
                    DiceView(n:leftDiceNum)
                    DiceView(n:rightDiceNum)
                }
                .padding(.horizontal)
                Spacer()
                Button {
                    self.leftDiceNum = Int.random(in: 1...6)
                    self.rightDiceNum = Int.random(in: 1...6)
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


