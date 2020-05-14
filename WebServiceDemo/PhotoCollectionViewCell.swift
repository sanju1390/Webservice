//
//  PhotoCollectionViewCell.swift
//  WebServiceDemo
//
//  Created by Sanju Naik on 13/05/20.
//  Copyright © 2020 Sanju. All rights reserved.
//

import UIKit
import Kingfisher

class PhotoCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageView: UIImageView!
    
    func setupImage(url: String) {
        imageView.kf.setImage(with: URL(string: url)!)
    }
    
}
