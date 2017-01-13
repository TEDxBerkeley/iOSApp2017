//
//  SpeakersViewController.swift
//  iOSApp2017
//
//  Created by Alvin Wan on 1/12/17.
//  Copyright © 2017 Alvin Wan. All rights reserved.
//

import UIKit


class SpeakersViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var speakersTableView: UITableView!
    
    let speakerNames = ["Minh Dang", "Mike Duffy", "Vivienne Ming", "François Reyes", "Tai Tran", "Esther Wojcicki", "Steven Fish", "Loretta Falcone", "Fuji Lai"]
    let speakerBylines = ["Advocate on U.S. Advisory Council on Human Trafficking", "Founder of Happiness Publishing, LLC", "Theoretical neuroscientist, Technologist, Entrepreneur", "President & Founder of Réveil Citoyen", "Digital Marketer. Storyteller. Thought Leader.", "American journalist & Educator", "Professor at UC Berkeley", "Speaker", "MIT Fellow, NASA advisor, Researcher"]
    let speakerImageUris = ["MinhDang.jpg", "MikeDuffy.jpeg", "VivienneMing.jpg", "FrancoisReyes.jpg", "Tai Tran.jpg", "Esther Wojcicki.JPG", "nobody.jpg", "Loretta Falcone.jpg", "Fuji Lai.jpg"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        speakersTableView.dataSource = self
        speakersTableView.delegate = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return speakerNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) ->   UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SpeakerCell", for: indexPath as IndexPath) as! SpeakerTableViewCell
        cell.speakerNameLabel.text = speakerNames[indexPath.item]
        cell.speakerBylineLabel.text = speakerBylines[indexPath.item]
        cell.speakerImageView.image = UIImage(named: speakerImageUris[indexPath.item])!.circle?.imageResize(sizeChange: CGSize(width: 50, height: 50))
        return cell
    }
    
}

extension UIImage {
    
    func imageResize (sizeChange:CGSize) -> UIImage{
        
        let hasAlpha = true
        let scale: CGFloat = 0.0 // Use scale factor of main screen
        
        UIGraphicsBeginImageContextWithOptions(sizeChange, !hasAlpha, scale)
        self.draw(in: CGRect(origin: CGPoint.zero, size: sizeChange))
        
        let scaledImage = UIGraphicsGetImageFromCurrentImageContext()
        return scaledImage!
    }
    
    var circle: UIImage? {
        let square = CGSize(width: min(size.width, size.height), height: min(size.width, size.height))
        let imageView = UIImageView(frame: CGRect(origin: .zero, size: square))
        imageView.contentMode = .scaleAspectFill
        imageView.image = self
        imageView.layer.cornerRadius = square.width/2
        imageView.layer.masksToBounds = true
        UIGraphicsBeginImageContextWithOptions(imageView.bounds.size, false, scale)
        guard let context = UIGraphicsGetCurrentContext() else { return nil }
        imageView.layer.render(in: context)
        let result = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return result
    }
}
