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

    @IBOutlet weak var collectionView: UICollectionView!
    var photos = [Photo]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.title = "Photos"
        
        let resource = Photo.getAll()
        WebService().load(resource) { [weak self](result) in
            switch result {
            case .success(let photos):
                self?.photos = photos
                self?.collectionView.reloadData()
            case .failure(let error):
                print("Failed to load with error = \(error)")
            }
        }
        
    }
}


extension ViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return photos.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PhotoCollectionViewCell", for: indexPath) as! PhotoCollectionViewCell
        cell.setupImage(url: photos[indexPath.row].urls.small)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 120, height: 120)
    }
}

