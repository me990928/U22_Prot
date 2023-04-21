//
//  ContentView.swift
//  U22_Prot
//
//  Created by 広瀬友哉 on 2023/04/21.
//

import SwiftUI

struct ContentView: View {
    @State var xSelfManeag: CGFloat = .zero
    @State var xtranslate: CGFloat = .zero
    @State var blurVal: CGFloat = 5
    var body: some View {
        GeometryReader{ geometry in
//            ScrollView(.horizontal, showsIndicators: false){
                VStack{
                    ZStack{
                        CharMainView().blur(radius: blurVal).animation(.default, value: blurVal)
                            .frame(width: geometry.size.width)
                            .gesture(DragGesture()
                                .onEnded({ value in
                                    xtranslate = value.startLocation.x - value.location.x
                                    print(xtranslate)
                                    if(value.startLocation.x > value.location.x && xtranslate > geometry.size.width / 2){
                                        self.xSelfManeag = .zero
                                        self.blurVal = 5
                                    }
                                })
                            )
                        
                        SelfManagementBarView()
                            .frame(width: geometry.size.width)
                            .offset(x: xSelfManeag).animation(.default, value: xSelfManeag)
                            .gesture(DragGesture()
                                .onEnded({ value in
                                    xtranslate = value.startLocation.x - value.location.x
                                    print(xtranslate)
                                    if(value.startLocation.x < value.location.x && xtranslate < geometry.size.width / 2){
                                        self.xSelfManeag = geometry.size.width
                                        self.blurVal = 0
                                    }
                                })
                            )
                    }
                }
//            }
        }.ignoresSafeArea(edges: [.bottom])
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
