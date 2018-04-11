//
//  ViewController.swift
//  iosIntern
//
//  Created by Manolescu Mihai Alexandru on 10/04/2018.
//  Copyright © 2018 ValiTeam. All rights reserved.
//

import UIKit
import Alamofire


class FirstScreen: UIViewController, UITableViewDelegate, UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return DevelopersList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = UITableViewCell()
        
        cell.textLabel?.text =  DevelopersList[indexPath.row].name
        cell.imageView?.image = DevelopersList[indexPath.row].image
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        performSegue(withIdentifier: "segueOne", sender: DevelopersList[indexPath.row])
    }
    
    
    
    @IBOutlet var listWithDevs: UITableView!
    
    override func viewDidAppear(_ animated: Bool)
    {
        
    }

    override func viewDidLoad()
    {
        
        
        
        self.listWithDevs.dataSource = self
        self.listWithDevs.delegate = self
        
        

    

                
        fetchDataFromStackOverFlowAPI(for: "https://api.stackexchange.com/2.2/users?pagesize=2&order=desc&sort=reputation&site=stackoverflow", completed:
            {
               print("\n\n  Finished fetching data from API \n")
               self.listWithDevs.reloadData()
            })
        
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        let VC = segue.destination as! SecondScreen
        VC.currentDeveloper = sender as! Developer

    }
    
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

