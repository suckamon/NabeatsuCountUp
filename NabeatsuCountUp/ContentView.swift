//
//  ContentView.swift
//  NabeatsuCountUp
//
//  Created by 坂本弘輔 on 2020/11/07.
//  Copyright © 2020 坂本弘輔. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var cnt:Int = 0
    @State private var imageFileName:String = "nabeatsu_01"
    
    var body: some View {
        VStack {
            Text("世界のナベアツさんっ")
                .font(.title)
                .padding(.vertical)
            Button(action: {
                self.countUp()
            }) {
                Text("カウントアップ！")
                    .padding(.vertical)
            }
            Text("Count \(cnt)")
                .padding(.vertical)
            Image(self.imageFileName)
                .resizable()
                .frame(width: 300.0, height: 300.0, alignment: .leading)
                .clipShape(Circle())
                .shadow(color: Color(red: 0.5, green: 0.5, blue: 0.5, opacity: 0.2), radius: 20, x: 3, y: 3)
            Button(action: {
                self.reset()
            }) {
                Text("リセット")
            }
            .padding()
        }
    }
    
    func countUp() {
        self.cnt += 1
        if self.cnt % 5 == 0 {
            self.imageFileName = "nabeatsu_03"
        } else if self.cnt % 3 == 0 {
            self.imageFileName = "nabeatsu_02"
        } else {
            self.imageFileName = "nabeatsu_01"
        }
    }
    
    func reset() {
        self.cnt = 0
        self.imageFileName = "nabeatsu_01"
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
