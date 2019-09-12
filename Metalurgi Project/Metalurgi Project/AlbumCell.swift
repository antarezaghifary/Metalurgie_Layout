//
//  AlbumCell.swift
//  Metalurgi Project
//
//  Created by 247 on 12/08/19.
//  Copyright © 2019 247. All rights reserved.
//

import UIKit

class AlbumCell: CollectionViewCell {
    @IBOutlet weak var descLbl: UILabel!
    @IBOutlet weak var judulLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.judulLbl.font = UIFont.systemFont(ofSize: 12, weight: .bold)
        self.judulLbl.textColor = .black
        
        self.descLbl.font = UIFont.systemFont(ofSize: 12, weight: .bold)
        self.descLbl.textColor = .darkGray
        
    }
    
    override func reset() {
        super.reset()
        
        self.judulLbl.text = nil
        self.descLbl.text = nil
    }

}
