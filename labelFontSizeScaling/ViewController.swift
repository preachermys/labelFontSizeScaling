//
//  ViewController.swift
//  labelFontSizeScaling
//
//  Created by Preacher on 20.01.2021.
//  Copyright © 2021 Yulia Milovanova. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var lab : UILabel!
    @IBOutlet var lab2 : UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // proving that text font size shrinkage in a label works in a multiline label in iOS 8
        
        let s2 = """
            Fourscore and seven years ago, our fathers brought forth \
            upon this continent a new nation, conceived in liberty and \
            dedicated to the proposition that all men are created equal.
            """
        let content2 = NSMutableAttributedString(string:s2, attributes: [
            .font: UIFont(name:"HoeflerText-Black", size:16)!
        ])
        content2.addAttributes([
            .font: UIFont(name:"HoeflerText-Black", size:24)!,
            .kern: -4
            ], range:NSMakeRange(0,1))
        
        self.lab.adjustsFontSizeToFitWidth = true
        self.lab.minimumScaleFactor = 0.5
        
        // self.lab.lineBreakMode = .byWordWrapping
        
        // self.lab.numberOfLines = 1
        
        self.lab.attributedText = content2
        self.lab2.attributedText = content2
        
    }
}
