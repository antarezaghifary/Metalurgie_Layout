//
//  RollHeaderViewModel.swift
//  Metalurgi Project
//
//  Created by 247 on 08/08/19.
//  Copyright © 2019 247. All rights reserved.
//

import Foundation
import UIKit

protocol RollViewHeaderModelDelegate: class {
    func didSelect(roll: RollModel)
}

class RollHeaderViewModel: CollectionViewViewModel<RollHeaderCell, RollModel>{
    weak var delegate: RollViewHeaderModelDelegate?
    
    override func config(cell: RollHeaderCell, data: RollModel, indexPath: IndexPath, grid: Grid) {
        cell.imageView.image = UIImage(named: data.image)
        cell.jdlLbl.text = data.judul
    }
    override func size(data: RollModel, indexPath: IndexPath, grid: Grid, view: UIView) -> CGSize {
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
    
    override func callback(data: RollModel, indexPath: IndexPath) {
        self.delegate?.didSelect(roll: data)
    }
}
