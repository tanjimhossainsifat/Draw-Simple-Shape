//
//  ViewController.swift
//  Draw-Simple-Shape
//
//  Created by Tanjim Hossain on 1/9/18.
//  Copyright © 2018 Tanjim Hossain. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let width:CGFloat = 240.0
        let height:CGFloat = 360.0
        
        let drawView = DrawView(frame: CGRect(x: self.view.frame.size.width/2-width/2, y: self.view.frame.size.height/2 - height/2, width: width, height: height))
        
        self.view.addSubview(drawView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

