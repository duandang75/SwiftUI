//
//  Recipe_ListApp.swift
//  Recipe List
//
//  Created by Duan Dang on 10/8/22.
//

import SwiftUI

@main
struct Recipe_List_App: App {
    var body: some Scene {
        WindowGroup {
            RecipeTabView().environmentObject(RecipeModel())
        }
    }
}
