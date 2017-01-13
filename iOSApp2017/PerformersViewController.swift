//
//  PerformersViewController.swift
//  iOSApp2017
//
//  Created by Alvin Wan on 1/12/17.
//  Copyright © 2017 Alvin Wan. All rights reserved.
//


import UIKit


class PerformersViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var performersTableView: UITableView!
    
    
    let performerNames = ["Kyle Hanagami", "Damien Horne"]
    let performerBylines = ["Performer", "Performer"]
    let performerImageUris = ["nobody.jpg", "Damien Horne.jpg"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        performersTableView.dataSource = self
        performersTableView.delegate = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return performerNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) ->   UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PerformerCell", for: indexPath as IndexPath) as! PerformerTableViewCell
        cell.performerNameLabel.text = performerNames[indexPath.item]
        cell.performerBylineLabel.text = performerBylines[indexPath.item]
        cell.performerImageView.image = UIImage(named: performerImageUris[indexPath.item])!.circle?.imageResize(sizeChange: CGSize(width: 50, height: 50))
        return cell
    }
}
