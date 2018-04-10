//
//  SecondScreen.swift
//  iosIntern
//
//  Created by Manolescu Mihai Alexandru on 10/04/2018.
//  Copyright © 2018 ValiTeam. All rights reserved.
//

import UIKit
import Foundation

class SecondScreen: UIViewController
{

    
    @IBOutlet var profileImage: UIImageView!
    @IBOutlet var name: UILabel!
    
    var currentDeveloper = Developer()
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        profileImage.image = currentDeveloper.image
        name.text = currentDeveloper.name
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

 
}
