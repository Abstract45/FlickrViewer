//
//  FlickrHelper.swift
//  Flickr Viewer
//
//  Created by Miwand Najafe on 2016-02-14.
//  Copyright © 2016 Miwand Najafe. All rights reserved.
//

import Foundation

class FlickrHelper: NSObject {

    class func URLForSearchString(sString: String) -> String {
        let apiKey = "1074ef4f5936401262b9d74d7f74db63"
        
        let searchString = sString.stringByAddingPercentEscapesUsingEncoding(NSUTF8StringEncoding)
        
        return "https://www.flickr.com/services/rest/?method=flickr.photos.search&format=json&api_key=" + apiKey + "&text=" + sString + ""
    }
    
    class func URLForFlickrPhoto(photo: FlickrPhoto, size: String) -> String {
        
        print("http://farm\(photo.farm).staticflickr.com\(photo.server)/\(photo.photoID)_\(photo.secret)_\(size).jpg")
        
        var _size = size
        
        if _size.isEmpty {
            return "m"
        }
        
        return "http://farm\(photo.farm).staticflickr.com\(photo.server)/\(photo.photoID)_\(photo.secret)_\(_size).jpg"
    }
    
    func searchFlickrForString(searchString: String, completion: (searchString: String!, flickrPhotos: NSMutableArray!, error: NSError) -> () ) {
        
        let searchURL = FlickrHelper.URLForSearchString(searchString)
        let queue: dispatch_queue_t = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0)
        
        dispatch_async(queue, {
            
            var error: NSError?
            
            do {
                var searchResultsString: String! = try String(contentsOfURL: NSURL(string: searchString)!, encoding: NSUTF8StringEncoding)
            } catch {
                
            }
            
        })
    }
}