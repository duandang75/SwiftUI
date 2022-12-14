//
//  ContentView.swift
//  Recipe List
//
//  Created by Duan Dang on 10/8/22.
//

import SwiftUI

struct RecipeListView: View {
    
    //@ObservedObject var model = RecipeModel()
    @EnvironmentObject var model: RecipeModel
    var body: some View {
        NavigationView {
            
            VStack(alignment: .leading){
                Text("All Recipes")
                    .bold()
                    
                    .padding(.top,40)
                    .font(.largeTitle)
                ScrollView{
                    LazyVStack (alignment: .leading) {
                        ForEach(model.recipes){ r in
                            NavigationLink {
                                RecipeDetailView(recipe: r)
                            } label: {
                                HStack(spacing:20){
                                    Image(r.image)
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 50,height: 50,alignment: .center)
                                        .clipped()
                                        .cornerRadius(5)
                                    Text(r.name)
                                        .foregroundColor(Color.black)
                                }
                            }
                            
                            
                        }
                        .navigationBarHidden(true)
                    }
                }
            }
            .padding(.leading)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeListView()
            .environmentObject(RecipeModel())
    }
}
