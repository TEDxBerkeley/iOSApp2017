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
    let speakerDescriptions =  ["Minh Dang is a Team Manager at Linde Group, an IT consulting firm in Emeryville.  She is a Presidential Appointee to the first ever U.S. Advisory Council on Human Trafficking and is also currently a Co-Principal Investigator for a community-based research study funded by the National Institute of Justice entitled, 'Researcher-Survivor-Ally Formative Evaluation of San Francisco's Anti-Trafficking Task Forces'. Minh has received awards from the ACLU, Cal Alumni Association, City of Berkeley, and more. In 2013, she was one of fifteen AAPI Women named a Champion of Change by President Barack Obama. Minh first publicly identified as a survivor of slavery and incest in 2008, when MSNBC featured her story of slavery in a documentary. Minh also serves as an independent consultant, providing training and technical assistance for organizations addressing human trafficking and child abuse. Informally, she provides guidance and mentorship to survivors and formally, she serves on the Advisory Board of AnnieCannons, a pioneering organization that trains survivors of human trafficking in web development and programming. From 2005 to 2011, Minh worked at the University of California, Berkeley Public Service Center as an AmeriCorps Program Coordinator. She earned her B.A. in Sociology and her M.S.W. from the University of California, Berkeley. In her spare time, Minh plays center-mid on the soccer field, is training to hike the John Muir Trail, and has an unabashed love for stationary.","Mike Duffy is the founder of Happiness Publishing, LLC. He has been researching happiness for over 30 years. He is friends with and has interviewed the brightest minds in the field of positive psychology. He is the author of The Happiness Book: A Positive Guide To Happiness, The Happiness Book For Men and The Happiness Book For Kids: A Child’s Guide To Happiness! Volume I & II. Mike is the founder of The Happiness Hall Of Fame. Members of the hall include: Muhammad Ali, Chris Anderson, curator of TED; Mr. October, Reggie Jackson; Dr. Wayne Dyer, Serena Williams, Derek Jeter, NFL Hall Of Famer, Roger Staubach; Taylor Swift, Olympic gold medalist, Kristi Yamaguchi; The San Francisco Giants, The Golden State Warriors, Dolly Parton, Carlos Santana’s Milagro Foundation, Saint Mother Teresa’s Missionaries Of Charity and many others. The Happiness Hall Of Fame recognizes, encourages and celebrates people and organizations that make other people happy. The website is www.happinesshalloffame.com.","Named one of 10 Women to Watch in Tech in 2013 by Inc. Magazine, Vivienne Ming is a theoretical neuroscientist, technologist and entrepreneur. She co-founded Socos, where machine learning and cognitive neuroscience combine to maximize students' life outcomes. Vivienne is also a visiting scholar at UC Berkeley's Redwood Center for Theoretical Neuroscience, where she pursues her research in neuroprosthetics. In her free time, Vivienne has developed a predictive model of diabetes to better manage the glucose levels of her diabetic son and systems to predict manic episodes in bipolar sufferers. She sits on the boards of The Palm Center, Emozia, Engender, and Genderis Inc., and is a Chief Science Advisor to Cornerstone Capital, Platypus Institute, Shiftgig, and Bayes Impact. Dr. Ming also speaks frequently on issues of LGBT inclusion and gender in technology. Vivienne lives in Berkeley, CA, with her wife (and co-founder) and their two children.","Born in 1996 in the North of France, François Reyes has since his earliest years developed an interest in politics. But these past few years, after working for a senator during some time in France, he realized that change could only come from civil society. Deeply impacted by the lack of interest of the politicians in his homecountry for making people's lives better and countering extremism, he grew the desire to work as hard as possible with 'everyday people' in order to counter the lack of interest of the politicians. After the Charlie Hebdo terrorist attacks in January 2015 in Paris, he created a global NGO called Citizen's Awakening, that has for a goal to counter extremism and create understanding through bringing together people, through dialogue. Citizen's Awakening now is present in Canada, the UK, India, Hungary, France, and many other countries. Impacted on a personnal level by the Paris attacks of November 2015, he pledged to fight as hard as he could againt terrorism worldwide with what he believes is the most powerful weapon on the long term to tackle extremism : our ability so speak up, and to create bridges between different communities and different countries. François Reyes is also a speaker and an ambassador for One Young World & the Quilliam Foundation, and a member of the FATE (Families Against Terrorism & Extremism) network. He's in the middle of writing a book gathering the voices and solutions of/from/for families impacted one way or the other by terrorism, whether they lost a member of their family in a terrorist attack, or a child to the extremist-narrative. ","Named the youngest Forbes 30 Under 30 and LinkedIn Top Voice in Marketing & Advertising, Tai is an experienced storyteller, speaker, writer, and marketer. Tai's work has been widely recognized by Forbes, LinkedIn, Twitter, Business Insider, UC Berkeley, and UCLA.Tai is a regular contributor on Forbes, LinkedIn, and Social Media Today, where he writes about personal branding, thought leadership, digital marketing, and millennials. He has spoken at the Forbes CMO Summit, LinkedIn Marketing & Communications All-Hands, Blackbox VC Speaker Summit, UCLA Personal Innovation Series, and Berkeley-Haas MBA Speaker Series.At Apple, Tai is the lead producer for social and content. Prior to Apple, he led digital marketing and communications for Samsung, UC Berkeley, and the Haas School of Business. Tai taught one of UC Berkeley’s most popular undergraduate courses in digital marketing, content publishing, and personal branding. He is also a proud Berkeley-Haas alum.","Esther Wojcicki is a internationally known journalism teacher and the founder of the Palo Alto High School Media Arts Program, a program that focuses on empowering students through the use of media (newspaper, magazine, yearbook, websites, video production, photography, radio, & television). The program started in 1984 with an already established (1918) 6 -8 page newspaper and 19 students; it has grown to become one of the most distinguished and the largest scholastic media program in the nation today (2016)  with 600+ students, five additional teachers, nine publications, and a new 25,000 sq. ft Media Arts Center (2014).Esther  is a Distinguished Visiting Scholar at MediaX at Stanford, a 2009 MacArthur Foundation Research Fellow, ; the 2002 California Teacher of the Year by the California Commission on Teacher Credentialing; the 2011 Charles O’Malley Award recipient from Columbia Scholastic Press.  In 2013, she was awarded an honorary doctorate from Palo Alto University,  and in 2016 an honorary doctorate from Rhode Island School of Design.  In November, 2016 she was awarded the MyHero Award for her work in global education.  She has been a speaker at multiple conferences including TED (2015), G20 Summit, and Singularity University Summit.  She co-authored popular education  book on blended learning entitled Moonshots in Education: Launching Blended Learning in the Classroom (2015) that explains a way to revolutionize education for the digital age. Her focus is give student agency in the classroom to empower their creativity and innovation skills.   She is also the mother of Susan Wojcicki, CEO of YouTube, Janet Wojcicki, Professor of Pediatrics at UCSF Medical School and Anne Wojcicki, CEO of 23andMe.   She is married to Stanford Physics Professor Stanley Wojcicki.  She and her husband are proud graduates of UC Berkeley.","M. Steven Fish is a comparative political scientist who studies democracy and authoritarianism in developing and postcommunist countries, religion and politics, and constitutional systems and national legislatures. Originally from Kentucky, he now makes his home in the San Francisco Bay Area and serves as a professor of political science at the University of California, Berkeley. He is the author of Are Muslims Distinctive? A Look at the Evidence (Oxford, 2011), which was selected for Choice's Outstanding Academic Titles, 2012: Top 25 Books. He is also author of Democracy Derailed in Russia: The Failure of Open Politics (Cambridge, 2005), which was the recipient of the Best Book Award of 2006, presented by the Comparative Democratization Section of the American Political Science Association, and Democracy from Scratch: Opposition and Regime in the New Russian Revolution (Princeton, 1995). He is coauthor of The Handbook of National Legislatures: A Global Survey (Cambridge, 2009) and Postcommunism and the Theory of Democracy (Princeton, 2001). He has conducted extensive field research in Eurasia, East Europe, and Southeast Asia. He served as a Senior Fulbright Fellow and Visiting Professor at the Airlangga University, Surabaya, Indonesia, in 2007 and at the European University at St. Petersburg, St. Petersburg, Russia, in 2000-2001. In 2005, he was the recipient of the Distinguished Social Sciences Teaching Award of the Colleges of Letters and Science, University of California, Berkeley.","Loretta Falcone churns complexity into simplicity with data science  to reveal unseen patterns and connections.  Her seminal research at Caltech’s Jet Propulsion Laboratory as a NASA groomed scientist induced insights from the spacecraft exploration of Uranus, Jupiter and Mars to applications in climate change and energy optimization until one day her child suddenly took ill and she confronted her greatest challenge; to solve a serious health mystery.Follow her as she takes her intuition on an emotional journey to save her child where a constellation of scientific perspectives transmutes fear into love to spark hope through a fog of determination. When we see the world of any problem again through the fresh eyes of a child free from the conventional lenses of entrenched expertise, there is a simple awakening that can illuminate the big ah-ha of a great hypothesis.Loretta shares a deep commitment to science, education and advancing the quality of human spirit.  While waiting for code to compile she enjoys classical ballet, puppies and alpine walks in Lake Como, Italy where she lives with her husband and three children.","Fuji Lai is passionate about revolutionizing the human experience through technologies that enable us to be more human—transforming human connection/communication/collaboration—as well as revolutionizing the patient experience through augmenting human capabilities, improving healthcare access, and enhancing quality of care.  Fuji leverages her unique interdisciplinary background in biomedical engineering, robotics, human factors design and healthcare consulting to create new insights, to collaborate across diverse stakeholders, to translate research into commercially-viable results, to transform glimmers of futuristic ideas/moonshots into tangible deployed products embraced by users/market, and to impact and solve complex human challenges.  Her 20+ years experience driving innovation spans medical/surgical robotics, telepresence, telemedicine, mobile health, human-robot teams, human-machine interfaces, simulation, virtual reality, augmented reality, haptics and ranges from building startups to strategic partnerships with Fortune 500 companies and federal agencies.  She served as an early member of the medical robotics startup leadership team at InTouch Health where her role involved innovating a vision and strategy for an acute care healthcare delivery solution and led the design and development of a suite of FDA-cleared Remote Presence telepresence robots shipping 8 products in 5 years including the VITA (with iRobot)— world’s first FDA-Class II-cleared robot with one-touch, 'go there' autonomous navigation enabling new care models and 2014 Medical Design Excellence Award Finalist—and established virtual healthcare delivery networks now saving lives in 1500 hospitals in 22 countries from the ICU, OR, ED, clinic, to ambulance.  She also founded a medical human factors offering designing mission-critical medical devices/healthcare environments that enhance user experience, safety, performance capturing $4M business around the Hospital of the Future and was development team member on the first FDA-cleared surgical robot.  Fuji is author of 30+ peer-reviewed publications, inventor on 15+ patents, been funded by NIH, DoD, NASA, and earned SM Biomedical Engineering (Harvard), MS Mechanical Engineering (UC Berkeley), BS Biomedical Engineering (Duke), BS Electrical Engineering (Duke).  She is a 2016 Bold Visioneer with the XPRIZE Foundation, Singularity University Global Solutions Program 2015 Alumnus and Google Grant Recipient, MIT Solve Fellow, University of California Institute for Innovation Mentor/Advisor, and NSBRI/NASA Advisor to extend the reach of medical expertise to remote environments for space exploration.  "]
    
    let imageDimension: CGFloat = 60
    
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
        cell.speakerImageView.image = UIImage(named: speakerImageUris[indexPath.item])?.circle?.imageResize(sizeChange: CGSize(width: imageDimension, height: imageDimension))
        
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
            imageUri: speakerImageUris[indexPath.item],
            name: speakerNames[indexPath.item],
            byline: speakerBylines[indexPath.item],
            description: speakerDescriptions[indexPath.item])
        present(detailViewController, animated: true, completion: nil)
    }
    
    // Temporary lock in portrait mode.
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return UIInterfaceOrientationMask.portrait
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
