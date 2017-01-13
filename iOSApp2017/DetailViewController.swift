//
//  DetailViewController.swift
//  iOSApp2017
//
//  Created by Alvin Wan on 1/13/17.
//  Copyright © 2017 Alvin Wan. All rights reserved.
//


import UIKit


class DetailViewController: UIViewController {
    
    
    @IBOutlet weak var detailImageView: UIImageView!
    @IBOutlet weak var detailNameLabel: UILabel!
    @IBOutlet weak var detailBylineLabel: UILabel!
    @IBOutlet weak var detailCopyLabel: UILabel!
    
    let screenSize = UIScreen.main.bounds
    let sideMargin: CGFloat = 60
    let imageDimension: CGFloat = 125
    let borderWidth: CGFloat = 10
    
    var detailImageUri: String = "hamburger.png"
    var detailName: String = "Super Uber Duper Long Name"
    var detailByline: String = "Director of Whatchamacallit, King of North Pole Penguns"
    var detailDescription: String = "copy"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        refreshDisplay()
    }

    func display(imageUri: String, name: String, byline: String, description: String) {
        detailImageUri = imageUri
        detailName = name
        detailByline = byline
        detailDescription = description
    }
    
    func refreshDisplay() {
        detailImageView.image = (UIImage(named: detailImageUri)?.circle?.imageResize(sizeChange: CGSize(width: imageDimension, height: imageDimension)))!
        detailNameLabel.text = detailName
        detailBylineLabel.text = detailByline
        
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineSpacing = 10
        
        let attributedString = NSMutableAttributedString(string: detailDescription)
        attributedString.addAttribute(NSParagraphStyleAttributeName, value: paragraphStyle, range:NSMakeRange(0, attributedString.length))
        
        detailCopyLabel.attributedText = attributedString
        detailCopyLabel.frame.size.width = screenSize.width - (sideMargin * 2)
        detailCopyLabel.textAlignment = .center
        detailCopyLabel.sizeToFit()
    }
}
