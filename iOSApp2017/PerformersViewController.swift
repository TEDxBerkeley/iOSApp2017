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
    let performerDescriptions =  ["","There’s something very special about Damien. Actually, “special” may not be the best word. In times like these, in the world that we live in, there’s something relevant, significant and necessary about Damien – and people like him. You can go to pretty much any search engine, put “Damien Horne” in the search field and read about his life story and credentials. The cliff notes is he’s from Hickory, North Carolina. He’s one of twelve children (a blended family). He’s a middle child, adores his mother, is the first in his family to earn a high school diploma and now devotes a lot of his time and resources trying to make a better life for his loved ones and those around him. Although they didn’t grow up with a lot of monetary wealth (barely any to speak of), Damien’s mother had a love for God that inspired him to develop a personal relationship with Christ at the age of 7. It’s there where his hope journey began…The loss of brothers, experiencing family members being incarcerated aThe loss of brothers, experiencing family members being incarcerated aThe loss of brothers, experiencing family members being incarcerated aThe loss of brothers, experiencing family members being incarcerated aThe loss of brothers, experiencing family members being incarcerated aThe loss of brothers, experiencing family members being incarcerated aThe loss of brothers, experiencing family members being incarcerated aThe loss of brothers, experiencing family members being incarcerated aThe loss of brothers, experiencing family members being incarcerated aThe loss of brothers, experiencing family members being incarcerated aThe loss of brothers, experiencing family members being incarcerated aThe loss of brothers, experiencing family members being incarcerated aThe loss of brothers, experiencing family members being incarcerated aThe loss of brothers, experiencing family members being incarcersk DThe loss of brothers, experiencing famil his answer might surprise you. After receiving his associate’s degree from Free Will Baptist Bible College and becoming an ordained minister, Damien is intentional about giving back.Giving back by sharing his testimony.Giving back by serving at his home church, The Salvation Army.Giving back by offering words of encouragement, support and faith – anywhere he can.Damien recently started a blog that centers around his mission to surround others with hope. It’s called encourageinspiremotivate.com. Each week, there are new videos and articles on platforms he’s committed to: homelessness, human trafficking, prison ministry, world outreach, youth, adoption and the Word. That said, it should come as no surprise that Dr. Martin Luther King, Jr., Gandhi and Mother Teresa are some of his “purpose mentors” and life heroes.“Music is a talent God’s given me,” shares Damien. “It’s a tool that has opened up so many doors that I’m thankful for. But my heart is to speak to and reach out to as many“Music is a talent God’s given me,” shares Damien. “It’s a tool that has opened up so many doors that I’m thankful for. But my heart is to speak to and reach out to best“Music is a talent God’s givntact with.”Yep. Anyone who thinks like that is relevant, significant – and very necessary. Indeed. For such a time as this. "]
    
    let imageDimension: CGFloat = 50
    
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
        cell.performerImageView.image = UIImage(named: performerImageUris[indexPath.item])?.circle?.imageResize(sizeChange: CGSize(width: imageDimension, height: imageDimension))
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailViewController = storyboard?.instantiateViewController(withIdentifier: "detailViewController") as! DetailViewController
        detailViewController.display(
            imageUri: performerImageUris[indexPath.item],
            name: performerNames[indexPath.item],
            byline: performerBylines[indexPath.item],
            description: performerDescriptions[indexPath.item])
        present(detailViewController, animated: true, completion: nil)
    }
}
