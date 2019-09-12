//
//  AlbumViewModel.swift
//  Metalurgi Project
//
//  Created by 247 on 12/08/19.
//  Copyright © 2019 247. All rights reserved.
//

import Foundation
import UIKit

protocol AlbumViewModelDelegate: class {
    func didSelect(album: Album)
}

class AlbumViewModel: CollectionViewViewModel<AlbumCell, Album> {
    
    weak var delegate: AlbumViewModelDelegate?
    
    override func config(cell: AlbumCell, data: Album, indexPath: IndexPath, grid: Grid) {
        cell.judulLbl.text = data.judul
        cell.descLbl.text = data.desc
        
    }
    
    override func size(data: Album, indexPath: IndexPath, grid: Grid, view: UIView) -> CGSize {
        if
            (view.traitCollection.userInterfaceIdiom == .phone && view.traitCollection.verticalSizeClass == .compact) ||
                view.traitCollection.userInterfaceIdiom == .pad
        {
            return grid.size(for: view, ratio: 1.2, items: grid.columns / 4, gaps: grid.columns - 1)
        }
        if grid.columns == 1 {
            return grid.size(for: view, ratio: 1.1)
        }
        return grid.size(for: view, ratio: 1.2, items: grid.columns / 2, gaps: grid.columns - 1)
    }
    
    override func callback(data: Album, indexPath: IndexPath) {
        self.delegate?.didSelect(album: data)
    }
}

