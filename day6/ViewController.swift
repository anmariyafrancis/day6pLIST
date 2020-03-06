//
//  ViewController.swift
//  day6
//
//  Created by MacStudent on 2020-03-06.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{

    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        readPlistData()
    }
    func readPlistData()
    {
        if let bundlepath = Bundle.main.path(forResource: "Employee", ofType: "plist")
        {
            //print(bundlepath)
            
            if let dictionary = NSMutableDictionary(contentsOfFile: bundlepath)
            {
                //print(dictionary)
                if let countries = dictionary["countries"] as? [String]
                {
                    for v in countries
                    {
                        print(v)
                    }
                }
                if let users = dictionary["users"] as? [[String:String]]
                {
                    var flag = false
                    for userList in users
                    {
                        if userList["username"] == "abc" && userList["password"] == "abc@123"
                        {
                            flag=true
                        }
                    }
                    if flag==true
                    {
                        print("valid user")
                    }
                    else
                    {
                        print("invalid user")
                    }
                }
            }
            
        }
    }
}

