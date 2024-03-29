//
//  CharMainView.swift
//  U22_Prot
//
//  Created by 広瀬友哉 on 2023/04/21.
//

import SwiftUI

struct CharMainView: View {
    var body: some View {
        ZStack {
            CharObjView()
            VStack{
                CharStatusView()
                CharManagementButtonView()
            }
        }
    }
}

struct CharMainView_Previews: PreviewProvider {
    static var previews: some View {
        CharMainView()
    }
}
