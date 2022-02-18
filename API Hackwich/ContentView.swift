//
//  ContentView.swift
//  API Hackwich
//
//  Created by KSerek on 2/17/22.
//

import SwiftUI

struct ContentView: View {
    @State private var jokes = [Joke]()
    var body: some View {
        NavigationView {
            List(jokes) { joke in
                NavigationLink(
                    destination: Text(joke.punchline)
                        .padding(),
                    label: {
                        Text(joke.setup)
                    })
            }
            .navigationTitle("Programming Jokes")
        }
        .onAppear(perform: {
            getJokes()
        })
    }
    func getJokes() {
        let apiKey = "?rapidapi-key=36d5608863msh83da79ccfb99926p1f0ef6jsnc436ea41d86c"
    }
}

struct Joke: Identifiable {
    let id = UUID()
        var setup: String
        var punchline: String
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
