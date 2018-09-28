//
//  VdoCell.swift
//  Exam
//
//  Created by Narumol Wangampa on 28/9/2561 BE.
//  Copyright © 2561 Narumol Wangampa. All rights reserved.
//

import UIKit

class VdoCell: UICollectionViewCell {

    var item:VdoItem? {
        didSet{
            
            print(item?.etag!)
        }
    }
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
