//
//  FlickrPhoto.swift
//  Flickr Viewer
//
//  Created by Miwand Najafe on 2016-02-14.
//  Copyright © 2016 Miwand Najafe. All rights reserved.
//

import Foundation
import UIKit

class FlickrPhoto: NSObject {
    
    var thumbImage: UIImage!
    var largeImage: UIImage!
    
    var photoID: String!
    var farm: Int!
    var server: String!
    var secret: String!
    
    override init() {
        super.init()
    }
}
