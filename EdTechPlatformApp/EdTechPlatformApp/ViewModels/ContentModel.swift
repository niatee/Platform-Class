//
//  ContentModel.swift
//  EdTechPlatformApp
//
//  Created by Niyati Belathur on 2/27/23.
//

import Foundation

//name of the class and name of the file is the same
class ContentModel:ObservableObject {
    
    @Published var modules = [Module]()
    
    //initialization: when app gets initialized, ___ happens
    init() {
        getLocalData()
        
        
        
        
    }
    
    //function getLocalData()
    
    func getLocalData() {
        
        //get the url for the json file
        let jsonURL = Bundle.main.url(forResource: "data", withExtension: "json")
        
        
        //read this file into the data objects
        do {
            let jsonData = try
            Data(contentsOf: jsonURL!) //exclamation makes it run anyways
            
            let jsonDecoder = JSONDecoder()
            
            let modules = try jsonDecoder.decode([Module].self, from: jsonData)
            
        //assign the passed modules to module property
            self.modules = modules
            
        }
        catch {
            //log error
            print("Parsing the json file failed")
            
        }
        
        //
        
    }
    
    
    
    
}
