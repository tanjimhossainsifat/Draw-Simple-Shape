//
//  DrawView.swift
//  Draw-Simple-Shape
//
//  Created by Tanjim Hossain on 1/9/18.
//  Copyright © 2018 Tanjim Hossain. All rights reserved.
//

import UIKit

class DrawView: UIView {
    
    var path : UIBezierPath!

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor.white
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    override func draw(_ rect: CGRect) {
        // Drawing code
        createRectangle()
    }
    
    //MARK: Private Methods
    
    func createRectangle() {
        
        path = UIBezierPath()
        path.move(to: CGPoint(x: 10, y: 10))
        path.addLine(to: CGPoint(x: self.frame.size.width - 10, y: 10))
        path.addLine(to: CGPoint(x: self.frame.size.width - 10, y: self.frame.size.height - 10))
        path.addLine(to: CGPoint(x: 10, y: self.frame.size.height - 10))
        path.close()
        
        UIColor.orange.setFill()
        path.fill()
        
        UIColor.red.setStroke()
        path.stroke()
        
    }

}
