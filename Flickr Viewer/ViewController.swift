//
//  ViewController.swift
//  Flickr Viewer
//
//  Created by Miwand Najafe on 2016-02-14.
//  Copyright © 2016 Miwand Najafe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let fHelper = FlickrHelper()
        let string = FlickrHelper.URLForSearchString("Flower")
//        print(string)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

