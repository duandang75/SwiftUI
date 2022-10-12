//
//  RecipeModel.swift
//  Recipe List
//
//  Created by Duan Dang on 10/8/22.
//

import Foundation

class RecipeModel:ObservableObject {
    
    @Published var recipes = [Recipe]()
    
    init() {
        // Create an instance of data service and get the data
        
        let service = DataService()
        self.recipes = service.getLocalData()
    }
    
}
