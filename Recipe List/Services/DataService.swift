//
//  DataService.swift
//  Recipe List
//
//  Created by Duan Dang on 10/8/22.
//

import Foundation

class DataService {
    func getLocalData() -> [Recipe] {
        // Parse local json file
        
        // Get a url path to the json file
        let pathString = Bundle.main.path(forResource: "recipes", ofType: "json")
        
        // Check if pathString is not nil, otherwise...
        guard pathString != nil else {
            return [Recipe]()
        }
        
        // Create a url object
        let url = URL(fileURLWithPath: pathString!)
        
        // Create a data object
        do {
            let data = try Data(contentsOf: url)
            // Decode the data with JSON decoder
            
            let decoder = JSONDecoder()
            do {
                let recipeData = try decoder.decode([Recipe].self, from: data)
                // Add the uniqe IDs
                for r in recipeData {
                    r.id = UUID()
                    
                    for i in r.ingredients {
                        i.id = UUID()
                    }
                }
                // Return the recipes
                return recipeData
            }
            catch {
                print(error)
                }
            }
        catch {
            print(error)
        }
        
        return [Recipe]()
    }
}


