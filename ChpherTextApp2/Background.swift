//
//  Background.swift
//  ChpherTextApp2
//
//  Created by Jibran Mughal on 06/10/2022.
//

import SwiftUI

struct Background: View {
    var body: some View {
        ZStack {
//            LinearGradient(gradient: Gradient(colors: [Color.white, Color.white.opacity(0.0)]), startPoint: .top, endPoint: .bottom)
//
//            LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.2532755733, green: 0.8966299891, blue: 1, alpha: 1)).opacity(0.66),Color(#colorLiteral(red: 0.9553515315, green: 0.5415655375, blue: 0.9386585355, alpha: 1)).opacity(0.5)]), startPoint: .topLeading, endPoint: .bottomTrailing)
            
        LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.05882352941, green: 0.04705882353, blue: 0.1607843137, alpha: 1)).opacity(0.8),Color(#colorLiteral(red: 0.1882352941, green: 0.168627451, blue: 0.3882352941, alpha: 1)).opacity(0.6),Color(#colorLiteral(red: 0.1411764706, green: 0.1411764706, blue: 0.2431372549, alpha: 1)).opacity(0.8)]), startPoint: .topLeading, endPoint: .bottomTrailing).ignoresSafeArea()
        }
        
//        LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.3276438415, green: 0.4471621513, blue: 0.9873984456, alpha: 1)).opacity(0.8),Color(#colorLiteral(red: 0.909091413, green: 0.9205358624, blue: 0.9203345776, alpha: 1)).opacity(0.6),Color(#colorLiteral(red: 1, green: 0.5652505755, blue: 0.9875134826, alpha: 1)).opacity(0.8)]), startPoint: .topLeading, endPoint: .bottomTrailing).ignoresSafeArea()
//    }
        
       
    }
}

struct Background_Previews: PreviewProvider {
    static var previews: some View {
        Background()
    }
}
