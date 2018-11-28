//
//  ViewController.swift
//  JSONparsing
//
//  Created by West Kraemer on 11/28/18.
//  Copyright © 2018 West Kraemer. All rights reserved.
//

import UIKit

//model object (put here rather than in a separate model folder for clarity and to be concise
struct Course: Decodable {
    let id: Int
    let name: String
    let link: String
    let imageUrl: String
    
    //no need for an initializer with decodable
//    init(json: [String: Any]) {
//        id = json["id"] as? Int ?? -1
//        name = json["name"] as? String ?? ""
//        link = json["link"] as? String ?? ""
//        imageUrl = json["imageURL"] as? String ?? ""
//    }
}



class ViewController: UIViewController {
    
    @IBOutlet weak var displayLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //get your url
        let jsonUrlString = "https://api.letsbuildthatapp.com/jsondecodable/course"
        
        //convert it from a string to a URL type
        guard let url = URL(string: jsonUrlString) else {return}
        
        //start a session to get the JSON data from the url
        URLSession.shared.dataTask(with: url) { (data, response, err) in
            //check error
            //check response status
            
            //convert the data back to a string, making sure the data is there with a guard let statement.
            guard let data = data else {return}
//            let dataAsAString = String(data: data, encoding: .utf8)
//            print(dataAsAString)
            
            do {
                let course = try JSONDecoder().decode(Course.self, from: data)
                print(course.id)
                
                
            } catch let jsonErr {
                print("Error serializing json", jsonErr)
            }
            
        }.resume()
        
        
    }
    
}

