//
//  TeamViewController.swift
//  iOSApp2017
//
//  Created by Alvin Wan on 1/13/17.
//  Copyright © 2017 Alvin Wan. All rights reserved.
//


import UIKit


class TeamViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var teamTableView: UITableView!
    
    let teamNames = ["Aaron Chelliah", "Aashna Patel", "Alvin Wan", "Andrew Veenstra", "Ishan Sharma", "Jennifer Barr", "Joe West", "Krupa Modi", "Leilani Gutierrez-Palominos", "Mehdi Kazi", "Melody Jung", "Renee Blodgett", "Saher Daredia", "Sean Kelly"]
    let teamBylines = ["Director of Outreach", "Executive Director of Operations and Partnerships", "Executive Director of Technology", "Executive Director of Logistics", "Manager of Logistics", "Co-Curator", "Director of Event Logistics", "Director of Social Media and Content", "Curator", "Director of Technology", "Executive Director of Information and Design", "Co-Curator", "Manager of Partnerships", "Executive Director of Interactive Projects"]
    let teamImageUris = ["nobody.jpg", "aashna.jpg", "alvin.jpg", "andrew.jpg", "ishan.jpg", "nobody.jpg", "joe.jpg", "krupa.jpg", "leilani.jpg", "mehdi.jpg", "melody.jpg", "renee.JPG", "saher.jpg", "sean.jpg"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        teamTableView.dataSource = self
        teamTableView.delegate = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return teamNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) ->   UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TeamCell", for: indexPath as IndexPath) as! TeamTableViewCell
        cell.teamNameLabel.text = teamNames[indexPath.item]
        cell.teamBylineLabel.text = teamBylines[indexPath.item]
        cell.teamImageView.image = UIImage(named: teamImageUris[indexPath.item])!.circle?.imageResize(sizeChange: CGSize(width: 50, height: 50))
        return cell
    }
}
