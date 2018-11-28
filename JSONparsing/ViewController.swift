//
//  ViewController.swift
//  JSONparsing
//
//  Created by West Kraemer on 11/28/18.
//  Copyright © 2018 West Kraemer. All rights reserved.
//

import UIKit

//model object (put here rather than in a separate model folder for clarity and to be concise
struct Course {
    let id: Int?
    let name: String?
    let link: String?
    let imageUrl: String?
}

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let jsonUrlString = "https://api.letsbuildthatapp.com/jsondecodable/course"
        guard let url = URL(string: jsonUrlString) else {return}
        
        URLSession.shared.dataTask(with: url) { (data, response, err) in
            //check error
            //check response status
            print("this session is working")
        }.resume()
        
        
        
    }


}

