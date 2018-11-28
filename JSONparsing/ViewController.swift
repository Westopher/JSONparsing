//
//  ViewController.swift
//  JSONparsing
//
//  Created by West Kraemer on 11/28/18.
//  Copyright © 2018 West Kraemer. All rights reserved.
//

import UIKit

struct Course: Decodable {
    let id: Int
    let name: String
    let link: String
    let imageUrl: String
}

class ViewController: UIViewController {
    
    @IBOutlet weak var displayLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let jsonUrlString = "https://api.letsbuildthatapp.com/jsondecodable/course"
        guard let url = URL(string: jsonUrlString) else {return}
        URLSession.shared.dataTask(with: url) { (data, response, err) in
            guard let data = data else {return}
            
            do {
                let course = try JSONDecoder().decode(Course.self, from: data)
                print(course.id)
            } catch let jsonErr {
                print("Error serializing json", jsonErr)
            }
            
        }.resume()
        
    }
    
}

