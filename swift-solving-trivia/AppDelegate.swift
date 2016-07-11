//
//  AppDelegate.swift
//  swift-solving-trivia
//
//  Created by Joel Bell on 7/8/16.
//  Copyright © 2016 Joel Bell. All rights reserved.
//

import UIKit

@UIApplicationMain


class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    
    
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        
        let statesAndCapitals  = [
            "Alabama":"Montgomery",
            "Alaska":"Juneau",
            "Arizona":"Phoenix",
            "Arkansas":"Little Rock",
            "California":"Sacramento",
            "Colorado":"Denver",
            "Connecticut":"Hartford",
            "Delaware":"Dover",
            "Florida":"Tallahassee",
            "Georgia":"Atlanta",
            "Hawaii":"Honolulu",
            "Idaho":"Boise",
            "Illinois":"Springfield",
            "Indiana":"Indianapolis",
            "Iowa":"Des Moines",
            "Kansas":"Topeka",
            "Kentucky":"Frankfort",
            "Lousiana":"Baton Rouge",
            "Maine":"Augusta",
            "Maryland":"Annapolis",
            "Massassachusetts":"Boston",
            "Michigan":"Lansing",
            "Minnesota":"Saint Paul",
            "Mississippi":"Jackson",
            "Missouri":"Jefferson City",
            "Montana":"Helena",
            "Nebraska":"Lincoln",
            "Nevada":"Carson City",
            "New Hampshire":"Concord",
            "New Jersey":"Trenton",
            "New Mexico":"Santa Fe",
            "New York":"Albany",
            "North Carolina":"Raleigh",
            "North Dakota":"Bismarck",
            "Ohio":"Columbus",
            "Oklahoma":"Oklahoma City",
            "Oregon":"Salem",
            "Pennsylvania":"Harrisburg",
            "Rhode Island":"Providence",
            "South Carolina":"Columbia",
            "South Dakota":"Pierre",
            "Tennessee":"Nashville",
            "Texas":"Austin",
            "Utah":"Salt Lake City",
            "Vermont":"Montpelier",
            "Virgina":"Richmond",
            "Washington":"Olympia",
            "West Virginia":"Charleston",
            "Wisconsin":"Madison",
            "Wyoming":"Cheyenne"]
        
        print(solveTrivia(statesAndCapitals))
        
        
        
        
        return true
    }
    
    /*
     
     write your function here
     
     */
    
    let statesAndCapitals  = [
        "Alabama":"Montgomery",
        "Alaska":"Juneau",
        "Arizona":"Phoenix",
        "Arkansas":"Little Rock",
        "California":"Sacramento",
        "Colorado":"Denver",
        "Connecticut":"Hartford",
        "Delaware":"Dover",
        "Florida":"Tallahassee",
        "Georgia":"Atlanta",
        "Hawaii":"Honolulu",
        "Idaho":"Boise",
        "Illinois":"Springfield",
        "Indiana":"Indianapolis",
        "Iowa":"Des Moines",
        "Kansas":"Topeka",
        "Kentucky":"Frankfort",
        "Lousiana":"Baton Rouge",
        "Maine":"Augusta",
        "Maryland":"Annapolis",
        "Massassachusetts":"Boston",
        "Michigan":"Lansing",
        "Minnesota":"Saint Paul",
        "Mississippi":"Jackson",
        "Missouri":"Jefferson City",
        "Montana":"Helena",
        "Nebraska":"Lincoln",
        "Nevada":"Carson City",
        "New Hampshire":"Concord",
        "New Jersey":"Trenton",
        "New Mexico":"Santa Fe",
        "New York":"Albany",
        "North Carolina":"Raleigh",
        "North Dakota":"Bismarck",
        "Ohio":"Columbus",
        "Oklahoma":"Oklahoma City",
        "Oregon":"Salem",
        "Pennsylvania":"Harrisburg",
        "Rhode Island":"Providence",
        "South Carolina":"Columbia",
        "South Dakota":"Pierre",
        "Tennessee":"Nashville",
        "Texas":"Austin",
        "Utah":"Salt Lake City",
        "Vermont":"Montpelier",
        "Virgina":"Richmond",
        "Washington":"Olympia",
        "West Virginia":"Charleston",
        "Wisconsin":"Madison",
        "Wyoming":"Cheyenne"]
    
    
    
    func solveTrivia(dictionary: [String : String]) -> String {
        
        var testedState = ""
        var containsSameCharacter = true
        for (state, capital) in dictionary {
            
            testedState = state
            
            let lowercaseState = state.lowercaseString
            let lowercaseCapital = capital.lowercaseString
            
            let stateAsCharacters = lowercaseState.characters
            let capitalsAsCharacters = lowercaseCapital.characters
            
            for character in stateAsCharacters {
                
                if capitalsAsCharacters.contains(character) {
                    containsSameCharacter = true
                    break
                }else{
                    containsSameCharacter = false
                }
                
            }
            if containsSameCharacter == false {
                return testedState
            }
        }
        return "There's no such combination."
    }
    
    
}

