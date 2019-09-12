//
//  RollHeaderCell.swift
//  Metalurgi Project
//
//  Created by 247 on 08/08/19.
//  Copyright © 2019 247. All rights reserved.
//

import UIKit

class RollHeaderCell: CollectionViewCell {
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var jdlLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.jdlLbl.font = UIFont.systemFont(ofSize: 12, weight: .bold)
        self.jdlLbl.textColor = .black
        self.jdlLbl.textAlignment = .center
        
        self.imageView.layer.masksToBounds = true
    }
    
    override func reset() {
        super.reset()
        
        self.jdlLbl.text = nil
        self.imageView.image = nil
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        self.setCircularImageView()
    }
    
    func setCircularImageView() {
        self.imageView.layer.cornerRadius = CGFloat(roundf(Float(self.imageView.frame.size.width / 2.0)))
    }
    
}

