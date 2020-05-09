//
//  ViewController.swift
//  WebServiceDemo
//
//  Created by Sanju Naik on 09/05/20.
//  Copyright © 2020 Sanju. All rights reserved.
//

import UIKit
import WebService

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let resource = FlickrFeed.getAll()
        WebService().load(resource) { (result) in
            switch result {
            case .success(let feed):
                print("feed = \(feed)")
            case .failure(let error):
                print("Failed to load with error = \(error)")
            }
        }
        
    }

    

}

