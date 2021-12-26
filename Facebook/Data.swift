//
//  Data.swift
//  Facebook
//
//  Created by Youssef Bhl on 24/12/2021.
//

import Foundation
struct Author: Identifiable {
    var id = UUID()
    let name: String
    let photoProfile: String
    let storyName: String
    let text: String
    
    static var all = [
        Author(name: "Annah", photoProfile: "profile1", storyName: "story1", text: "Have a nice day every one, hope your holidays are good"),
        Author(name: "Mark", photoProfile: "profile2",storyName: "story2", text: "Big problem in work today, hope everything will be alright"),
        Author(name: "Joe", photoProfile: "profile3", storyName: "story3", text: "who else noticed that there are many ads on YouTube nowdays?, that's crazy !"),
        Author(name: "Millie", photoProfile: "profile4", storyName: "story4", text: "Hello guys. I'm new on Facebook, anyone wanna be my  friend ?"),
        Author(name: "Billie", photoProfile: "profile5", storyName: "story5", text: "that app is so amazing, I love sharing all my news and I'm happy to be here"),
        Author(name: "Solen", photoProfile: "profile6", storyName: "story6", text: "Anyone plays GTAV here? if yes add me")
    ]
}


