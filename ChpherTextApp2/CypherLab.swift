//
//  CypherLab.swift
//  ChpherTextApp2
//
//  Created by Jibran Mughal on 06/10/2022.
//

import SwiftUI

extension View {
    func hideKeyboard() {
        let resign = #selector(UIResponder.resignFirstResponder)
        UIApplication.shared.sendAction(resign, to: nil, from: nil, for: nil)
    }
}

struct CypherLab: View {
    
    @State var userInput: String = ""
    @State var ourOutput: String = "Result here"
    @State var key : String = ""
    @State var ourOutputA: [Character] = []
    @State var flip: Bool = true
    @State var isSecured: Bool = true
    let pasteboard = UIPasteboard.general
    
    var check1 = "Result here"
    var check2 = "Result here"
    
    var body: some View {
        ZStack{
            Background().ignoresSafeArea()
            VStack{
                Text("Cypher Lab")
                    .font(.system(size:45))
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.white.opacity(0.9))
                    .padding()
                
                
                TextField("", text: $userInput, axis:.vertical)
                    .lineLimit(5...5)
                    .padding()
                    .background(Color.black.opacity(0.35).cornerRadius(10))
                    .foregroundColor(Color.white.opacity(0.9))
                    .padding()
                    .onTapGesture {
                        hideKeyboard()
                    }
                
                ZStack {
                    if isSecured {
                        SecureField("", text: $key)
                            .padding()
                            .background(Color.black.opacity(0.35).cornerRadius(10))
                            .foregroundColor(Color.white.opacity(0.9))
                            .onTapGesture {
                                hideKeyboard()
                            }
//                            .onSubmit {
//                                isSecured.toggle()
//                            }
                        .padding()
                    } else {
                        TextField("", text: $key)
                            .padding()
                            .background(Color.black.opacity(0.35).cornerRadius(10))
                            .foregroundColor(Color.white.opacity(0.9))
                            .onTapGesture {
                                hideKeyboard()
                            }
                            .padding()
                    }
                    
                    Button(action: {
                        isSecured.toggle()
                        }) {
                        Image(systemName: self.isSecured ? "eye.slash" : "eye")
                                .accentColor(.gray)
                                .frame(width: 66, height: 54)
                        }
                        .padding(.horizontal)
                        .offset(x: 145)
                        
                    
                    
                }
                
                
                
                Button(action: {
                    ourOutput = userInput == "" ? check1 : flip ? (encoder(message: userInput, key: key)) : (decoder(message: userInput, key: key))
                }, label: {
                    Text(flip ? "Encode" : "Decode")
                })
                .disabled(checkEmpty(message: userInput, key: key) || !keyValid(key: key))
                .padding()
                .background(.white)
                .cornerRadius(10)
                .opacity(checkEmpty(message: userInput, key: key) || !keyValid(key: key) ? 0.2 : 0.9)
                .foregroundColor(Color.black)
                
                HStack {
                    Toggle("", isOn: $flip)
                        
                }
                .padding(.trailing,20)
                
                ZStack {
                    HStack{
                        Text(ourOutput)
                            .foregroundColor(Color.white)
                            .lineLimit(5...5)
                            .padding()
                            .opacity(ourOutput == check1 || ourOutput == check2 || ourOutput == "" ? 0.7:0.7)
                        Spacer()
                    }
                    .background(Color.black.opacity(0.35).cornerRadius(10))
                    .foregroundColor(Color.black)
                    .padding()
                    
                    Button(action: {
                        pasteboard.string = ourOutput
                    }, label: {
                        Text("Copy to Clipboard")
                            .font(.system(size: 14, design: .rounded))
                    })
                    .disabled(checkEmpty(message: userInput, key: key) || !keyValid(key: key) || ourOutput == check1 || ourOutput == "")
                    .padding()
                    .background(Color.white)
                    .cornerRadius(10)
                    .foregroundColor(Color.black)
                    .opacity(checkEmpty(message: userInput, key: key) || !keyValid(key: key) || ourOutput == check1 || ourOutput == "" ? 0.2 : 0.9)
                    .offset(x : 0 , y : 100)
                    
                }
                Spacer()
                    .frame(height: 50)
                }
            
            ZStack {
                
                if userInput == ""{
                    Text("Your message here")
                    .offset(x:-90,y: -196)
                    .foregroundColor(Color.white.opacity(0.6))
                }
                
                if key == "" {
                Text("Add your Secret Key here")
                    .offset(x:-67,y: -28)
                    .foregroundColor(Color.white.opacity(0.6))
                }

               
            }
        .allowsHitTesting(false)
            
           
        }.foregroundColor(.white)
    }
}

struct CypherLab_Previews: PreviewProvider {
    static var previews: some View {
        CypherLab()
    }
}
