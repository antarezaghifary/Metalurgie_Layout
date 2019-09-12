//
//  AlbumViewController.swift
//  Metalurgi Project
//
//  Created by 247 on 12/08/19.
//  Copyright © 2019 247. All rights reserved.
//

import UIKit

class AlbumViewController: CollectionViewController {
    var album: Album!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = self.album.judul
        self.collectionView.reloadData()
    }
}
