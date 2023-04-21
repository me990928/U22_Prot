//
//  CharComentView.swift
//  U22_Prot
//
//  Created by 広瀬友哉 on 2023/04/21.
//

import SwiftUI

struct CharComentView: View {
    var body: some View {
        
        HStack {
            Text("テストメッセージです。").multilineTextAlignment(.leading)
            Spacer()
        }.padding(50)
    }
}

struct CharComentView_Previews: PreviewProvider {
    static var previews: some View {
        CharComentView()
    }
}
