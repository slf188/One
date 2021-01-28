//
//  ContentView.swift
//  One
//
//  Created by Felipe Vallejo on 1/26/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                VStack (alignment: .leading) {
                    Text("Recently played").bold()
                    ScrollView (.horizontal, showsIndicators: false)  {
                        VStack (alignment: .leading) {
                            HStack {
                                MusicView(image: "liked", text: "Liked Songs")
                                MusicView(image: "rap", text: "Rap Caviar")
                                MusicView(image: "hiphop", text: "I love my '90's Hip Hop")
                                MusicView(image: "rock", text: "Rock")
                                MusicView(image: "eminem", text: "Eminem")
                                MusicView(image: "melly", text: "YNW Melly")
                                MusicView(image: "x", text: "This is XXXTENTACION")
                                MusicView(image: "dre", text: "Dr. Dre")
                                MusicView(image: "album1", text: "I Am You")
                            }
                        }
                    }.frame(height: 200)
                    Text("Throwback").bold()
                    ScrollView (.horizontal, showsIndicators: false) {
                        VStack (alignment: .leading) {
                            HStack {
                                MusicView(image: "pop", text: "Pop Rising")
                                MusicView(image: "korn", text: "Korn")
                                MusicView(image: "bill", text: "Bill Weathers")
                                MusicView(image: "classics", text: "I love My West Coast Classics   ")
                            }
                        }
                    }.frame(height: 200)
                    Text("Charts").bold()
                    ScrollView (.horizontal, showsIndicators: false) {
                        VStack (alignment: .leading) {
                            HStack {
                                MusicView(image: "global", text: "Your daily update of the most played songs globally")
                                MusicView(image: "usa", text: "Your daily update of the most played songs in the US")
                            }
                        }
                    }.frame(height: 200)
                    Text("Popular playlists").bold()
                    ScrollView (.horizontal, showsIndicators: false) {
                        VStack (alignment: .leading) {
                            HStack {
                                MusicView(image: "latin", text: "Latin Hit Mix")
                                MusicView(image: "viral", text: "Viral Hits")
                                MusicView(image: "trapperz", text: "Trapperz")
                            }
                        }
                    }.frame(height: 200)
                }
            }.navigationBarTitle("Good Evening")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}

struct MusicView: View {
    let image: String
    let text: String
    var body: some View {
        VStack (alignment: .leading) {
            Image(image).resizable().cornerRadius(8)
            Text(text).lineLimit(nil)
        }.frame(width: 120, height: 170)
    }
}
