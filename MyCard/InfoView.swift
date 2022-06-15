//
//  InfoView.swift
//  MyCard
//
//  Created by Donna on 2022/06/15.
//

import SwiftUI

struct InfoView: View {
    let text: String
    let imgName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(Color.white) //another way to fill color
        //                    .foregroundColor(.white)
            .frame(height: 50)
            .overlay(HStack {
                Image(systemName: imgName).foregroundColor(.gray)
                Text(text)
            })
            .padding(.all)
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "hey", imgName: "phone.fill")
            .previewLayout(.sizeThatFits)
    }
}
