//
//  DrawView.swift
//  Draw-Simple-Shape
//
//  Created by Tanjim Hossain on 1/9/18.
//  Copyright © 2018 Tanjim Hossain. All rights reserved.
//

import UIKit

class DrawView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor.lightGray
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    

}
