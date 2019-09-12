//
//  TextCell.swift
//  Metalurgi Project
//
//  Created by 247 on 08/08/19.
//  Copyright © 2019 247. All rights reserved.
//

import UIKit

class TextCell: CollectionViewCell {

    @IBOutlet var textCell: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        self.textCell.font = UIFont.systemFont(ofSize: 12, weight: .bold)
        self.textCell.textColor = .black
        self.textCell.numberOfLines = 0
    }
    
    override func reset() {
        super.reset()
        
        self.textCell.text = nil
    }
}
