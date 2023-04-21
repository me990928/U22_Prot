//
//  CharStatusView.swift
//  U22_Prot
//
//  Created by 広瀬友哉 on 2023/04/21.
//

import SwiftUI

struct CharStatusView: View {
    var body: some View {
        VStack{
            HStack(){
                Text("Level: 10").font(.title3)
                Spacer()
                Text("00:00")
            }.padding()
            Spacer()
        }
    }
}

struct CharStatusView_Previews: PreviewProvider {
    static var previews: some View {
        CharStatusView()
    }
}
