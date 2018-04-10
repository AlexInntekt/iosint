//
//  GlobalData.swift
//  iosIntern
//
//  Created by Manolescu Mihai Alexandru on 10/04/2018.
//  Copyright © 2018 ValiTeam. All rights reserved.
//

import Foundation
import UIKit
import Alamofire

var DevelopersList = [Developer]()

typealias DownloadComplete = () -> ()

class Developer
{
    var image = #imageLiteral(resourceName: "trei")
    var name = String()
    var location = String()
    var goldenBadges = Int()
    var silverBadges = Int()
    var bronzeBadges = Int()
}




func returnObjects() -> [Developer]
{
    var array = [Developer]()
    
    var developerOne = Developer()
    developerOne.image = #imageLiteral(resourceName: "icon")
    developerOne.name = "Steve"
    
    var developerTwo = Developer()
    developerTwo.image = #imageLiteral(resourceName: "doi")
    developerTwo.name = "MARK"
    
    var developerThree = Developer()
    developerThree.image = #imageLiteral(resourceName: "trei")
    developerThree.name = "John"
    
    array.append(developerOne)
    array.append(developerTwo)
    array.append(developerThree)
    
    //    var location = String()
    //    var goldenBadges = Int()
    //    var silverBadges = Int()
    //    var bronzeBadges = Int()
    
    
    return array
}







func fetchDataFromStackOverFlowAPI(for specificURL: String,completed: @escaping DownloadComplete)
{
    //Download with Alamofire
    let currentURL = URL(string: specificURL)!
    
    
    Alamofire.request(currentURL).responseJSON
        { response in
            let result = response.result
            
            print(response)
            
           
          
                
         
            
         

            
        
//            if let dictionary = result.value as? Dictionary<String, AnyObject>
//            {
//                if let name = dictionary["name"] as? String
//                {
//
//                    self._cityName = name.capitalized
//
//                }
//
//                if let weather = dictionary["weather"] as? [Dictionary<String, AnyObject>]
//                {
//
//                    self._description = weather[0]["description"] as! String
//                    self._weatherType = weather[0]["main"] as! String
//
//                    print("ewgwet4y34y: ", self._weatherType)
//                }
//
//                if let main = dictionary["main"] as? Dictionary<String, AnyObject>
//                {
//                    if let currentTemperatureInKelvin = main["temp"] as? Double
//                    {
//                        var tempInCelsius = currentTemperatureInKelvin - 273.15
//                        self._currentTemp = tempInCelsius
//                    }
//
//                    if let kelv = main["temp"] as? Double
//                    {
//                        self._currentTemp = convertKelvinToCelsius(kelv)
//                    }
//
//                }
//
            
            }
            completed()
    }
    
    
    
    




