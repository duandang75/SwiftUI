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
            RecipeListFeaturedView()
                .tabItem {
                    VStack{
                        Image(systemName: "star.fill")
                        Text("Featured")
                    }
                }
            RecipeListView()
                .tabItem {
                    VStack{
                        Image(systemName: "list.dash")
                        Text("Recipes List")
                    }
                }
            
        }
        .environmentObject(RecipeModel())
    }
}

struct RecipeTabView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeTabView()
    }
}
