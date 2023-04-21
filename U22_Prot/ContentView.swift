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
    @State var location: CGFloat = .zero
    @State var CharFlag: Bool = false
    @State var SelfManeFlag: Bool = true
    
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
//                                    print("xtranslate")
                                    if(value.startLocation.x > value.location.x && self.location < geometry.size.width / 2  && self.CharFlag){
                                        self.location = .zero
                                        self.blurVal = 5
                                        self.SelfManeFlag = true
                                        self.CharFlag = false
                                        print("yes!")
                                    }else{
                                        self.location = geometry.size.width * 2
                                        self.blurVal = 0
                                    }
                                })
                            )
                        SelfManagementBarView()
                            .frame(width: geometry.size.width)
                            .offset(x: geometry.size.width/2)
                            .position(x: self.location, y: geometry.size.height/2)
                            .animation(.default, value: self.location)
                            .gesture(
                                    DragGesture()
                                        .onChanged({ value in
//                                            print("最初:\(value.startLocation.x)")
//                                            print("今:\(self.location)")
                                            if(value.startLocation.x < geometry.size.width * 0.2 && self.SelfManeFlag){
                                                self.location = value.location.x
                                            }
                                        })
                                        .onEnded({ value in
                                            if(value.translation.width > geometry.size.width * 0.5 && value.startLocation.x < geometry.size.width * 0.2 && self.SelfManeFlag){
                                                //                                            self.location = 0
                                                self.location = geometry.size.width * 2
                                                self.blurVal = 0
                                                
                                                self.SelfManeFlag = false
                                                self.CharFlag = true
                                                print(self.CharFlag)
                                                print(self.SelfManeFlag)
                                            }else{
                                                self.location = 0
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
