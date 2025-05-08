//
//  InfoCardHistoryTest.swift
//  ChpherTextApp2
//
//  Created by Jibran Mughal on 07/10/2022.
//

import SwiftUI

struct InfoCardHistoryTest: View {
    var body: some View {
        VStack {
            ExtractedView()
        }
    }
}


struct InfoCardHistoryTest_Previews: PreviewProvider {
    static var previews: some View {
        InfoCardHistoryTest()
    }
}

struct ExtractedView: View {
    @State var show : Bool = false
    var bounds = UIScreen.main.bounds
    
    var body: some View {
        ZStack {
            Color.black.opacity(0.3)
                .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
            VStack {
                HStack(alignment: .top) {
                    VStack(alignment: .leading, spacing: 16){
                        Text("History")
                            .font(.system(size: 32, weight: .bold, design: .rounded))
                            .foregroundColor(Color.white.opacity(0.8))
//                        Text("Click to Learn about the history")
//                            .font(.system(size: 16, weight: .bold, design: .rounded))
//                            .foregroundColor(Color.white.opacity(0.8))
                    }
                    Spacer()
                    Image(systemName: "clock.arrow.circlepath")
                        .font(.system(size: 24, weight: .bold))
                        .foregroundColor(Color.white.opacity(0.8))
                }
                Spacer()
                Image("kindpng_677336")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: .infinity)
                    .frame(height: 180, alignment: .top  )
            }
            .padding(show ? 30 : 15)
            .padding(.top, show ? 12 : 0)
        }
//        .frame(width: show ? bounds.size.width : 300, height: show ? bounds.size.height : 280)
        .frame(maxWidth: show ? .infinity : 300, maxHeight: show ? .infinity : 280)
        .shadow(color: Color.black.opacity(0.4 ), radius: 20, x:0, y:10)
        .animation(.spring(response: 0.5, dampingFraction: 0.6, blendDuration: 0))
        .onTapGesture {
            self.show.toggle()
        }
        .ignoresSafeArea()
        
    }
}
