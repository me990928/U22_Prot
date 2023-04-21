//
//  CharObjView.swift
//  U22_Prot
//
//  Created by 広瀬友哉 on 2023/04/21.
//

import SwiftUI

struct CharObjView: View {
    var body: some View {
        
        VStack {
            Spacer()
            Image("char").resizable().scaledToFit()
        }.ignoresSafeArea(edges: [.bottom])
    }
}

struct CharObjView_Previews: PreviewProvider {
    static var previews: some View {
        CharObjView()
    }
}
