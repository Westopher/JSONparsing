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

  //api.letsbuildthatapp.com/jsondecodable/course
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

