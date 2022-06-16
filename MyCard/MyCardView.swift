//
//  MyCardView.swift
//  MyCard
//
//  Created by Donna on 2022/06/16.
//

import SwiftUI

struct MyCardView: View {
    var body: some View {
        ZStack{
            Color(red: 0.09, green: 0.63, blue: 0.52)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("DSC_0558")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 200, height: 200, alignment: .center)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white,lineWidth:5))
                Text("Isaac")
                    .font(Font.custom("NanumGothic-Bold", size: 60))
                    .bold()
                    .foregroundColor(.white)
                Text("Software Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                Divider()
                InfoView(text: "+82 10 0000 0000", imgName: "phone.fill")
                InfoView(text: "Isaac@gamil.com", imgName: "envelope.fill")
                
                
            }
        }
    }
}

struct MyCardView_Previews: PreviewProvider {
    static var previews: some View {
        MyCardView()
    }
}
