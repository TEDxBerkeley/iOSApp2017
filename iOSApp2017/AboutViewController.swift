//
//  AboutViewController.swift
//  iOSApp2017
//
//  Created by Alvin Wan on 1/13/17.
//  Copyright © 2017 Alvin Wan. All rights reserved.
//


import UIKit


class AboutViewController: UIViewController {
    
    @IBOutlet weak var themeTitleLabel: UILabel!
    @IBOutlet weak var themeCopyLabel: UILabel!
    @IBOutlet weak var TEDxTitleLabel: UILabel!
    @IBOutlet weak var TEDxCopyLabel: UILabel!
    @IBOutlet weak var TEDTitleLabel: UILabel!
    @IBOutlet weak var TEDCopyLabel: UILabel!
    
    let sideMargin: CGFloat = 34
    
    let themeCopy = "\"To form or cause to form into a cluster or group; gather together\" Like a star, an idea can shine brightly on its own. It has the ability to impress upon its viewer a spectacular image. Picture, however, when individual ideas come together, creating a larger narrative. While that single idea seemed impressive from one angle, it's not until you step back that you realize its full potential. That same star is but a small twinkle buried within a galaxy that sets the entire sky alight. At TEDxBerkeley 2017, we will constellate thousands of unheard voices, uncovered perspectives, and unexpected stories. Each person brings to the event a complex history, and TEDxBerkeley aims to unite our speakers and audience members to share their stories and visionary outlooks with one another. Creating this larger narrative allows us to become more interconnected, and to constellate a fuller and more beautiful picture. By inviting others to shine their lights with us, we are forced to look at our own perspectives under a new light, and are better able to understand our place in this united nature."
    
    let TEDxCopy = "x = independently organized event. In the spirit of ideas worth spreading, TEDx is a program of local, self-organized events that bring people together to share a TED-like experience. At a TEDx event, TEDTalks video and live speakers combine to spark deep discussion and connection in a small group. These local, self-organized events are branded TEDx, where x = independently organized TED event. The TED Conference provides general guidance for the TEDx program, but individual TEDx events are self-organized. (Subject to certain rules and regulations.)"
    
    let TEDCopy = "TED is a nonprofit organization devoted to Ideas Worth Spreading. Started as a four-day conference in California 25 years ago, TED has grown to support those world-changing ideas with multiple initiatives. The annual TED Conference invites the world’s leading thinkers and doers to speak for 18 minutes. Their talks are then made available, free, at TED.com. TED speakers have included Bill Gates, Al Gore, Jane Goodall, Elizabeth Gilbert, Sir Richard Branson, Nandan Nilekani, Philippe Starck, Ngozi Okonjo-Iweala, Isabel Allende and former UK Prime Minister Gordon Brown. The annual TED Conference takes place each spring in Long Beach, California, along with the TEDActive simulcast in Palm Springs; the annual TEDGlobal conference is held each summer in Edinburgh, Scotland. TED’s media initiatives include TED.com, where new TEDTalks are posted daily, the recently launched TED-Ed platform for students and educators, the Open Translation Project, which provides subtitles and interactive transcripts as well as the ability for any TEDTalk to be translated by volunteers worldwide, and TEDBooks, short e-books by speakers that elaborate on a single idea originally presented on TED’s stage. TED has established the annual TED Prize, where exceptional individuals with a wish to change the world are given the opportunity to put their wishes into action; TEDx, which offers individuals or groups a way to host local, self-organized events around the world, and the TED Fellows program, helping world-changing innovators from around the globe to become part of the TED community and, with its help, amplify the impact of their remarkable projects and activities. Follow TED on Twitter or on Facebook. Follow TED on Twitter at twitter.com/TEDTalks, or on Facebook at facebook.com/TED."
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let screenSize: CGRect = UIScreen.main.bounds
        
        themeCopyLabel.text = themeCopy
        TEDxCopyLabel.text = TEDxCopy
        TEDCopyLabel.text = TEDCopy
        
        themeCopyLabel.frame.size.width = screenSize.width - (sideMargin * 2)
        TEDxCopyLabel.frame.size.width = screenSize.width - (sideMargin * 2)
        TEDCopyLabel.frame.size.width = screenSize.width - (sideMargin * 2)
        
//        themeCopyLabel.sizeToFit()
        TEDxCopyLabel.sizeToFit()
        TEDCopyLabel.sizeToFit()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
