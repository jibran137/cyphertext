//
//  InfoCards.swift
//  ChpherTextApp2
//
//  Created by Jibran Mughal on 06/10/2022.
//

import SwiftUI

struct InfoCardHistory: View {
    let headingC: String
    let bodyC: String
    var body: some View {
        ZStack {
            Color.black.opacity(0.47)
                .frame(width: 300, height: 300)
                .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
            .shadow(color:Color.black.opacity(0.2),  radius: 10, x:0, y:10)
            
            VStack(alignment: .leading, spacing: 16) {
                HStack{
                    Text(headingC)
                        .font(.system(size: 24, weight: .bold, design: .rounded))
                        .foregroundColor(Color.white.opacity(0.9))
                    Spacer()
                    
                    Image(systemName: "clock.arrow.circlepath").bold()
                        .foregroundColor(Color.white.opacity(0.8))
                        .padding(.trailing, 9)
                    
                }
                .padding(.top)

                Text(bodyC)
                    .font(.system(size: 18))
                    .foregroundColor(Color.white.opacity(0.9))
                
                Spacer()
            }
            .padding()
            .frame(width: 300, height: 300)
        }
    }
}

struct InfoCards_Previews: PreviewProvider {
    static var previews: some View {
        InfoCardHistory(headingC: "Head", bodyC: "Body")
    }
}
