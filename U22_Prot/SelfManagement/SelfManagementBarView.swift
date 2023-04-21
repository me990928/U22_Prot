//
//  SelfManagementView.swift
//  U22_Prot
//
//  Created by 広瀬友哉 on 2023/04/21.
//

import SwiftUI

struct SelfManagementBarView: View {
    var body: some View {
        TabView {
            ContentView()
                .tabItem {
                    Image(systemName: "person")
                    Text("Icon1")
                }
            ContentView()
                .tabItem {
                    Image(systemName: "calendar")
                    Text("Icon2")
                }
            ContentView()
                .tabItem {
                    Image(systemName: "chart.bar.xaxis")
                    Text("Icon3")
                }
            ContentView()
                .tabItem {
                    Image(systemName: "gearshape")
                    Text("Icon4")
                }
        }
    }
}

struct SelfManagementView_Previews: PreviewProvider {
    static var previews: some View {
        SelfManagementBarView()
    }
}
