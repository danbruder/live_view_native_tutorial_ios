//
//  ContentView.swift
//  LVNTutorial
//
//  Created by Dan Bruder on 9/4/22.
//

import SwiftUI
import PhoenixLiveViewNative

struct ContentView: View {
    
    @State var coordinator: LiveViewCoordinator<MyRegistry> = {
        var config = LiveViewConfiguration()
        config.navigationMode = .enabled
        return LiveViewCoordinator(URL(string: "https://lvn.dev.danbruder.com/cats")!, config: config)
    }()

    var body: some View {
        LiveView(coordinator: coordinator)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
