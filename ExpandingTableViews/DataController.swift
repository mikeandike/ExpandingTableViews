//
//  DataController.swift
//  ExpandingTableViews
//
//  Created by Michael Sacks on 12/12/15.
//  Copyright © 2015 MichaelSacks. All rights reserved.
//

import UIKit

class DataController: NSObject {


    static let sharedInstance = DataController()
    
    let lists = ["Foods", "People", "Movies", "Sports", "Musicians", "Ski Resorts", "Drinks", "Spoken Languages"]
    
    let listDetails = [["Mac & Cheese", "Tofu", "Salmon (Uncanned)", "Salmon (Canned)", "Eggs", "Broccoli", "Oatmeal", "Cottage Cheese", "Tomato Soup", "Shepherd's Pie"],      ["Nathan", "Josh", "Michael", "Leroy", "Felix", "Pablo", "Raul", "Jose", "Frank", "Anna", "Ellen", "Tony", "Adam", "Sarah", "Britney"],      ["Daddy Daycare", "Zoolander", "Back to the Future", "Men in Black", "Star Wars", "Star Trek", "Spaceballs", "Elf", "History of the World Part 1", "Pain and Gain", "True Grit", "Inglorious Bastards", "Kill Bill", "Restrepo", "Seabiscuit"],      ["Tennis", "Golf", "Football", "Soccer", "Baseball", "Volleyball"],      ["Kendrick Lamar", "Notorious BIG", "Rush", "Justin Timberlake", "Drake", "Jay-Z", "J. Cole", "The Bengals", "Led Zeppelin", "Cream", "Waka Flocka Flame", "O.A.R", "The Clash", "The Beatles", "The Beach Boys"],      ["Alta", "Snowbird", "Big Bear", "Sugarbowl", "Sundance", "Deer Valley", "Solitude", "Aspen", "Vail", "Crested Butte", "Telluride", "Wolf Creek", "Squaw Valley", "Brian's Head"],      ["Water", "Pepsi", "Milk", "Almond Milk", "Lemonaid", "Beer", "Wine", "Tequila", "Vodka", "Rum", "Coffee", "Tea", "Sprite", "Fanta", "Mountain Dew"],      ["English", "Chinese", "Spanish", "Arabic", "French", "German", "Portuguese", "Italian", "Hebrew", "Tagalog", "Afrikaans", "Japanese", "Hindi"]]
}
