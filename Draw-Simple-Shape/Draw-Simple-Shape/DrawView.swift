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
        //createRectangle()
        //createTriangle()
        createOval()
        
    }
    
    //MARK: Private Methods
    
    func createRectangle() {
        
        path = UIBezierPath()
        path.move(to: CGPoint(x: 0, y: 0))
        path.addLine(to: CGPoint(x: self.frame.size.width , y: 0))
        path.addLine(to: CGPoint(x: self.frame.size.width, y: self.frame.size.height))
        path.addLine(to: CGPoint(x: 0, y: self.frame.size.height))
        path.close()
        
        UIColor.orange.setFill()
        path.fill()
        
        UIColor.red.setStroke()
        path.stroke()
        
    }
    
    func createTriangle() {
        
        path = UIBezierPath()
        path.move(to: CGPoint(x: self.frame.size.width/2, y:0))
        path.addLine(to: CGPoint(x: self.frame.size.width, y: self.frame.size.height))
        path.addLine(to: CGPoint(x: 0, y: self.frame.size.height))
        path.close()
        
        UIColor.blue.setFill()
        path.fill()
        
        UIColor.red.setStroke()
        path.stroke()
        
    }
    
    func createOval() {
        path = UIBezierPath(ovalIn: self.bounds)
        
        UIColor.green.setFill()
        path.fill()
        
        UIColor.red.setStroke()
        path.stroke()
    }

}
