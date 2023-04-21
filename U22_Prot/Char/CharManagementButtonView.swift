//
//  CharManagementButtonView.swift
//  U22_Prot
//
//  Created by 広瀬友哉 on 2023/04/21.
//

import SwiftUI

struct CharManagementButtonView: View {
    var body: some View {
        
        VStack {
            Spacer()
            HStack(alignment: .top) {
                Spacer()
                Button {
                    print("Push Btn1")
                } label: {
                    Image(systemName: "frying.pan").resizable().foregroundColor(.black).frame(width: 50, height: 50)
                }.frame(width: 90,height: 90).background(.mint).cornerRadius(50)
                Spacer()
                Button {
                    print("Push Btn1")
                } label: {
                    Image(systemName: "ellipsis.message").resizable().foregroundColor(.black).frame(width: 50, height: 50)
            }.frame(width: 90,height: 90).background(.mint).cornerRadius(50)
                Spacer()
                Button {
                    print("Push Btn1")
                } label: {
                    Image(systemName: "dumbbell").resizable().foregroundColor(.black).frame(width: 50, height: 50)
            }.frame(width: 90,height: 90).background(.mint).cornerRadius(50)
                Spacer()
            }
        }.padding(.bottom, 30)

    }
}

struct CharManagementButtonView_Previews: PreviewProvider {
    static var previews: some View {
        CharManagementButtonView()
    }
}
