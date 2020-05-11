//
//  FlickrFeed.swift
//  WebServiceExample
//
//  Created by Sanju on 27/01/19.
//  Copyright © 2019 Sanju. All rights reserved.
//

import Foundation
import WebService

struct FlickrFeed: Codable {
    let title :String
}

extension FlickrFeed {
    static func getAll() -> Resource<[FlickrFeed]> {
        return Resource<[FlickrFeed]>(get: "https://api.flickr.com/services/feeds/photos_public.gne?tags=vegetables&;tagmode=any&format=json&nojsoncallback=1")
    }
}
