//
//  ViewController.swift
//  Metalurgi Project
//
//  Created by 247 on 08/08/19.
//  Copyright © 2019 247. All rights reserved.
//

import UIKit

class ViewController: CollectionViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "COBA"
        
        let albums = [
            Album(judul: "HIYAS", desc: "HAYO"),
            Album(judul: "Makan", desc: "Minum")
        ]
        let items = albums.map { album -> AlbumViewModel in
            let viewModel = AlbumViewModel(album)
            viewModel.delegate = self
            return viewModel
        }
    }
}


extension ViewController: AlbumViewModelDelegate{

    func didSelect(album: Album) {
        let viewController = AlbumViewController(nibName: nil, bundle: nil)
        viewController.album = album
        self.show(viewController, sender: nil)
    }
}
