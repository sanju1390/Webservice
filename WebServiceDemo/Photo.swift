//
//  FlickrFeed.swift
//  WebServiceExample
//
//  Created by Sanju on 27/01/19.
//  Copyright © 2019 Sanju. All rights reserved.
//

import Foundation
import WebService

struct Photo: Codable {
    let id :String
    let urls: PhotoUrl
}

struct PhotoUrl: Codable {
    let small: String
}

extension Photo {
    static func getAll() -> Resource<[Photo]> {
        return Resource<[Photo]>(get: "https://api.unsplash.com/photos")
    }
}
