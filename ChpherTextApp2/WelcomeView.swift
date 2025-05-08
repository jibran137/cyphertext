//
//  ContentView.swift
//  ChpherTextApp2
//
//  Created by Jibran Mughal on 06/10/2022.
//

import SwiftUI

struct WelcomeView: View {
    @Environment(\.colorScheme) var colorScheme
    @State var userInput: String = ""
    var body: some View {
        NavigationView {
            ZStack {
                Background()
//                    LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.05882352941, green: 0.1254901961, blue: 0.1529411765, alpha: 1)).opacity(0.8),Color(#colorLiteral(red: 0.1254901961, green: 0.2274509804, blue: 0.262745098, alpha: 1)).opacity(0.8),Color(#colorLiteral(red: 0.1725490196, green: 0.3254901961, blue: 0.3921568627, alpha: 1)).opacity(0.8)]), startPoint: .topLeading, endPoint: .bottomTrailing).ignoresSafeArea()
                VStack{
                    HStack {
                        Spacer()
                        NavigationLink(
                            destination: InfoPage(),
                            label: {
                                Image(systemName: "info.circle").bold()
                                    .foregroundColor(Color(#colorLiteral(red: 0, green: 0.7433161139, blue: 1, alpha: 1)))
                            })
                        
                        .padding()
                        }
                    Spacer()
                }
                ZStack {
                    Color.black.opacity(0.35)
                        .frame(width: 300, height: 300)
                        .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
                    .shadow(color:Color.black.opacity(0.1),  radius: 10, x:0, y:10)
                    
                    VStack(alignment: .leading, spacing: 16) {
                        HStack {
                            Text("Hey!")
                                .font(.system(size: 24, weight: .bold, design: .rounded))
                                .foregroundColor(Color.white.opacity(0.9))
                                .offset(x:0,y:8)
                            Spacer()
                        }

                        Text("Welcome to CypherText, have fun encripting your messages")
                            .font(.system(size: 18))
                            .foregroundColor(Color.white.opacity(0.9))
                        Spacer()
                        
                        ZStack {
                            HStack {
                                Spacer()
                                NavigationLink(
                                    destination: CypherLab(),
                                    label: {
                                        Text("Go to Cypher Lab")
                                            .opacity(0.8)
                                            .font(.system(size: 22, weight: .bold, design: .rounded))
                                            .foregroundColor(Color(#colorLiteral(red: 0, green: 0.7433161139, blue: 1, alpha: 1)))

                                    })
                                Spacer()
                                .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
                            }
                            .padding(.bottom,10)
                        }
                    }
                    .padding()
                    .frame(width: 300, height: 300)
                    
                    
                }
            }
            //.edgesIgnoringSafeArea(.all)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
