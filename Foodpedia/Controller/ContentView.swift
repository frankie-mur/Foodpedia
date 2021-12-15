//
//  ContentView.swift
//  Foodpedia
//
//  Created by FoodPedia on 12/14/21.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var navigator : Navigator
    @ObservedObject var isSearching = IsSearching.shared
    
    var body: some View {
        ZStack {
            VStack {
                
                if navigator.isSearchPageOpen {
                    
                    
                }else if navigator.isReciepeListOpen {
                    
                    
                }else{
              
                }
                
                
                Spacer()
                
               
            }
            
            if isSearching.isSearching{
            ZStack{
                Color(UIColor.init(white: 0.3, alpha: 0.7))
                    .ignoresSafeArea()
                ProgressView()
                }
            }
        }
        .ignoresSafeArea(.all, edges: .top)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(Navigator())
    }
}
