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
    let currentURL = URL(string: "http://api.stackexchange.com/2.2/users?pagesize=10&order=desc&sort=reputation&site=stackoverflow")!
    
    
    Alamofire.request(currentURL).responseJSON
        { response in
            let result = response.result
            
            // print(response)
            
            
            if let dictionary = result.value as? Dictionary<String, AnyObject>
            {
                
                
                if let list = dictionary["items"] as? [Dictionary<String, AnyObject>]
                {
                    print("\n  Entering the tree \n")
                    
                    for object in list
                    {
                        print( object["display_name"]! )
                        
                        let addingDev =  Developer()
                        addingDev.name = object["display_name"]! as! String
                        
                        DevelopersList.append(addingDev)
                        
                    }
                    
                }
            }
            
              completed()
                
            }
    
            
}
    




