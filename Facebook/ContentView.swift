//
//  ContentView.swift
//  Facebook
//
//  Created by Youssef Bhl on 24/12/2021.
//

import SwiftUI

struct ContentView: View {
    
    let facebookBlue = UIColor(red: 23/255.0, green: 120/255.0, blue: 242/255.0, alpha: 1)
    @Binding var text: String
    
    var body: some View {
        VStack {
            HStack {
                Text("facebook")
                    .font(.system(size: 48, weight: .bold, design: .default))
                    .foregroundColor(Color(facebookBlue))
                
                Spacer()
                
                Image(systemName: "person.circle")
                    .resizable()
                    .foregroundColor(Color(.secondaryLabel))
                    .frame(width: 45, height: 45, alignment: .center)
            }.padding()
            
            TextField("Search...", text: $text)
                .padding(7)
                .background(Color(.systemGray5))
                .cornerRadius(10)
                .padding(.horizontal, 15)
            
            ZStack {
                Color(.secondarySystemBackground)
                
                ScrollView(.vertical) {
                    VStack(alignment: .leading, spacing:-4) {
                        ScrollView(.horizontal, showsIndicators: false) {
                            ZStack {
                                                        HStack(spacing: 8) {
                                                            ForEach (Author.all) { story in
                                                                Image(story.storyName)
                                                                    .resizable()
                                                                    .aspectRatio( contentMode: .fill)
                                                                    .frame(width: 140, height: 200, alignment: .center)
                                                                    .background(Color.red)
                                                            }
                                                        }
                                                        HStack(alignment: .center, spacing: 14.5) {
                                                            ForEach(Author.all) { name in
                                                                Image(name.photoProfile)
                                                                    .resizable()
                                                                    .frame(width: 40, height: 40, alignment: .center)
                                                                    .aspectRatio(contentMode: .fill)
                                                                    .cornerRadius(50)
                                                                    .overlay(
                                                                        Circle().stroke(Color.blue, style: StrokeStyle(lineWidth:2)).frame(width: 42, height: 42)
                                                                    )
                                                                Text(name.name)
                                                                    .frame(width: 78, height: 20, alignment: .leading)
                                                                    .font(.title3)
                                                                    .padding(.leading,0)
                                                                    .background(Color(red: 0.949, green: 0.949, blue: 0.969, opacity: 0.785))
                                                                    .cornerRadius(5)
                                                            }
                                                        }.padding(.top,145)
                                                    }
                                                }.padding(8)
                                Spacer()
                        ForEach(Author.all) { author in
                            
                            VStack(alignment:.leading){

                                HStack(alignment: .center){
                                    Image(author.photoProfile)
                                        .resizable()
                                        .frame(width: 40, height: 40, alignment: .leading)
                                        .cornerRadius(50)
                                        .overlay(
                                            Circle().stroke(Color.blue, style:StrokeStyle(lineWidth:2)).frame(width: 43, height: 43)
                                        )
                                    VStack(alignment: .leading) {
                                        Text(author.name)
                                            .font(.title3)
                                            .padding(.leading, 5)
                                        Text("12 minutes ago")
                                            .font(.callout)
                                            .foregroundColor(.gray)
                                    }
                                    
                                    Spacer()
                                    Image(systemName: "ellipsis")
                                }.padding(.all, 15)
                                Text(author.text)
                                    .frame(alignment: .leading)
                                    .padding(.all, 11)
                                
                                
                                HStack {
                                    
                                    Button(action: {}, label: {Text("J'aime")
                                            .font(.headline)
                                    })
                                        .buttonStyle(PlainButtonStyle())
                                        .overlay(
                                            RoundedRectangle(cornerRadius: 5).stroke(Color(.link), style: StrokeStyle(lineWidth: 0.5)).frame(width: 65, height: 30)
                                        )
                                        .foregroundColor(Color(.link))
                                        .padding()
                                    
                                    Spacer()
                                    
                                    Button(action: {}, label: {Text("Commenter")
                                            .font(.headline)
                                    }).buttonStyle(PlainButtonStyle())
                                        .overlay(
                                            RoundedRectangle(cornerRadius: 5).stroke(Color(.link), style: StrokeStyle(lineWidth: 0.5)).frame(width:108, height: 30)
                                        )
                                        .foregroundColor(Color(.link))
                                        .padding()
                                    
                                    Spacer()
                                    
                                    Button(action: {}, label: {Text("Partager")
                                            .font(.headline)
                                    }).buttonStyle(PlainButtonStyle())
                                        .overlay(
                                            RoundedRectangle(cornerRadius: 5).stroke(Color(.link), style: StrokeStyle(lineWidth: 00.5)).frame(width:80, height: 30)
                                        )
                                        .foregroundColor(Color(.link))
                                        .padding()
                                    
                                    
                                }
                            }
                            .background(Color(.systemBackground))
                            .cornerRadius(10)
                            .padding(5)
                        }
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(text: .constant(""))
    }
}
