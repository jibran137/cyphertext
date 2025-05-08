//
//  InfoPage.swift
//  ChpherTextApp2
//
//  Created by Jibran Mughal on 06/10/2022.
//

import SwiftUI

struct InfoPage: View {
    var body: some View {
        ZStack{
            Background()
            ScrollView(.horizontal, showsIndicators: false){
                HStack{
//                    ZStack {
//                        Color.black.opacity(0.35)
//                            .frame(width: 300, height: 300)
//                            .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
//                        .shadow(color:Color.black.opacity(0.1),  radius: 10, x:0, y:10)
//
//                        VStack(alignment: .leading, spacing: 16) {
//                            HStack {
//                                Text("Hey!")
//                                    .font(.system(size: 24, weight: .bold, design: .rounded))
//                                    .foregroundColor(Color.white.opacity(0.9))
//                                    .offset(x:0,y:8)
//                                Spacer()
//                            }
//
//                            Text("Welcome to CypherText, have fun encripting your messages")
//                                .font(.system(size: 18))
//                                .foregroundColor(Color.white.opacity(0.9))
//                            Spacer()
//                        }
//                        .padding()
//                        .frame(width: 300, height: 300)
//                    }
                    InfoCardHistoryTest()
                    InfoCardHistory(headingC: "How it Works", bodyC: "This app will eventually house alphabets of the english language")
                    InfoCardHistory(headingC: "About me", bodyC: "Hey, I'm Jibran Mughal. I gradua feedback.\n\nTwitter: JibranMughal_")
                }
                .padding()
            }
        }
    }
}

struct InfoPage_Previews: PreviewProvider {
    static var previews: some View {
        InfoPage()
    }
}
