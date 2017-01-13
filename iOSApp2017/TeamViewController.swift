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
    let teamDescriptions =  ["Aaron Chelliah is a first year at UC Berkeley, studying economics. Born and raised in sunny Manhattan Beach California, Aaron followed his passion for exploring new ideas by working with TEDxManhattanBeach and debating international topics in Model United Nations. He also enjoyed being opinion editor of the school newspaper for the same reason. Aaron enjoys hiking, discovering new music, and hanging out with his friends. You can usually find him sampling the various cuisines around Berkeley, but you could also try emailing him at achelliah@berkeley.edu.", "Aashna Patel is a third-year UC Berkeley student majoring in Public Health. While she hopes to eventually pursue a career in medicine, she is especially interested in public health as a foundation to help explain some of the underlying issues of medicine, which she is able to explore as an intern for the Epilepsy Foundation of Northern California and as a researcher through the UC Berkeley School of Public Health. On campus, she also involved with UC Berkeley Indus, a South Asian cultural organization. You can always find Aashna looking for new hiking trails in Berkeley, rooting for her hometown team of the Chicago Bulls, or at aashna@tedxberkeley.org.", "Third-year Electrical Engineering and Computer Science undergraduate. I’m a diglot by definition, with a native English tongue and a recollection of French utterances. Lactose intolerant by birth but an ice-cream lover at heart. Call me wabbly, witling, whatever you will, but I just go by Alvin. Ask anyone that’s met me: I’m known for a contagious smile and a Macbook Pro. ", "Andrew Veenstra is a third-year civil engineering major and intended EECS minor. Aside from TEDxBerkeley, Andrews is developing apps for river stream-flow analysis under Professor Thompson and enjoys spending time with his brothers in Theta Tau, Berkeley’s co-ed engineering fraternity. Some of his hobbies include hiking, photography, and daydreaming about the beach. Andrew can be found at any cafe drinking a double shot of espresso, or he can be emailed at andrew@tedxberkeley.org.", "Ishan Sharma is a first-year UC Berkeley student pursuing economics, where he is interested in both business and politics. On the business side, Ishan trades stocks and runs his own LLC, HS Mixers, an event-hosting company for high school students. Ishan also is civically engaged, keeping up with local politics and fighting campus/food insecurity as an intern in the Associated Students of the University of California (ASUC). You can find Ishan skateboarding, playing soccer, or reading non-fiction self help books. Drop him a line at ishan@tedxberkeley.org .", "", "Joseph West is a second year student studying economics. Born and raised in Los Angeles, he spent his first year adjusting to life in Northern California. In addition to school work and TEDxBerkeley, Joe enjoys assisting cutting-edge research in economics, sampling exotic foods at nearby restaurants, hiking adventures in the wilderness, watching B-rated action movies, and jamming out to classic R&B music. Catch Joseph slacklining early in the mornings near the Campanile or contact him at joe@tedxberkeley.org.", "Krupa Modi is a second-year student studying Public Health with intended minors in Education and Global Poverty and Practice. She explores her passion for health equity and advocacy through volunteering with the Suitcase Clinic, a student organization that works with homeless and low-income populations. Krupa also works at UC Berkeley's Safe Transportation Research and Education Center (SafeTREC), researching the intersection between city planning and public health. Krupa enjoys cooking, traveling, and cheering on the Cal Golden Bears! Contact her at krupa@tedxberkeley.org.", "Leilani Gutierrez-Palominos, TEDxBerkeley 2017’s Curator, is a third-year student at UC Berkeley majoring in Molecular & Cell Biology and minoring in Global Poverty & Practice. Although she has a Hawaiian name, she was born in Guadalajara, Jalisco, Mexico and grew up in Fresno, CA. She aspires to be a doctor with a focus on underserved communities. Leilani investigates toxicology with the Nomura Research Group, is a Peer Advisor for the GPP minor, and tutors for the Biology Scholars Program. As member of the Cal Triathlon Team, she can be found hydrating her gills in any nearby body of water. Contact her at leilani@tedxberkeley.org.", "Mehdi Kazi is a first year at UC Berkeley, studying Computer Science. Aside from TEDxBerkeley, he plans to explore his passions for innovation and technology by participating in different hackathons in the area and working on small projects with friends. Mehdi loves food (especially watermelon!), exploring new places, and meeting new people. You will most likely find him at coffee shops across campus with one hand on his laptop and the other on a cup of iced coffee, but you can always reach him at mehdikazi@berkeley.edu.", "Melody Jung is a senior at UC Berkeley studying Materials Science & Engineering and Bioengineering. Aside from TEDxBerkeley, she also explores her passions working with the Medical Polymer Group researching implant materials, creating graphic designs with Innovative Design, and dancing with various hip-hop teams on campus. In her free time, Melody loves geocaching, drawing, and baking, so become her friend and you’ll never go hungry. You’re likely to spot her practicing hip-hop around campus or curled up in a cafe, but you can always reach her at melody@tedxberkeley.org.", "Renee Blodgett is founder of branding and communications consultancy Magic Sauce Media, which is dedicated to helping companies and individuals get ahead through smart go-to-market strategies. Known globally as a master of storytelling for the lifestyle, travel and technology industries, she is also founder and managing editor of We Blog the World, an online luxury travel site focused on Transformative Travel, where luxury, adventure and wellness meet. She was selected as a top social media influencer by Forbes & a top Bay Area digital influencer by the United Nations. Prolific on social media, you can follow her @magicsaucemedia, @weblogtheworld and @luxuryfoodies.", "Saher Daredia is a freshman at UC Berkeley planning to study Molecular Cell Biology and Public Health. Aside from TEDxBerkeley, Saher explores her interest in health education and social justice through the Community Health committee of the Cal Undergraduate Public Health Coalition. Saher ultimately hopes to pursue a career in epidemiological research and help at-risk populations in developing countries. She enjoys camping, cuddling with her dog, and consuming copious amounts of coffee. When her nose is not buried in a book or container of hummus, you can find her at saher@tedxberkeley.org.", "Sean Kelly is a third-year bioengineering major at UC Berkeley. He works on creating prototypes for mobile microscopy devices for use as portable diagnostic devices in developing nations in Professor Fletcher's lab. He enjoys reading novels such as Lev Grossman's The Magicians, drawing and graphic design, and occcasionally gets paid to watch people play video games. You can find him staring at either a book or computer screen, or at sean@tedxberkeley.org."]
    
    let imageDimension: CGFloat = 50
    
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
        cell.teamImageView.image = UIImage(named: teamImageUris[indexPath.item])?.circle?.imageResize(sizeChange: CGSize(width: imageDimension, height: imageDimension))
        
        /* this is where the magic happens, create a UIView and set its
         backgroundColor to what ever color you like then set the cell's
         selectedBackgroundView to your created View */
        
        let backgroundView = UIView()
        backgroundView.backgroundColor = UIColor(red: 190/255, green: 3/255, blue: 0/255, alpha: 1)
        cell.selectedBackgroundView = backgroundView
        return cell
    }

    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailViewController = storyboard?.instantiateViewController(withIdentifier: "detailViewController") as! DetailViewController
        detailViewController.display(
            imageUri: teamImageUris[indexPath.item],
            name: teamNames[indexPath.item],
            byline: teamBylines[indexPath.item],
            description: teamDescriptions[indexPath.item])
        present(detailViewController, animated: true, completion: nil)
    }
    
    // Temporary lock in portrait mode.
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return UIInterfaceOrientationMask.portrait
    }
}
