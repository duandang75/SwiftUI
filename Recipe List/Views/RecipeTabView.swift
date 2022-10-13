//
//  RecipeTabView.swift
//  Recipe List
//
//  Created by Duan Dang on 10/13/22.
//

import SwiftUI

struct RecipeTabView: View {
    var body: some View {
        TabView{
            Text("Recipe App")
                .tabItem {
                    VStack{
                        Image(systemName: "star.fill")
                        Text("Home")
                    }
                }
                RecipeListView()
                .tabItem {
                    VStack{
                        Image(systemName: "list.dash")
                        Text("Recipe List")
                    }
                }
            
        }
    }
}

struct RecipeTabView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeTabView()
    }
}
