//
//  TutorialViewController.swift
//  Carousel Challenge
//
//  Created by Olawale Oladunni on 10/20/15.
//  Copyright © 2015 walmartlabs. All rights reserved.
//

import UIKit

class TutorialViewController: UIViewController {

    
    @IBOutlet weak var tutorialScrollView: UIScrollView!
    @IBOutlet weak var pageControl: UIPageControl!
    
    @IBOutlet weak var spinButton: UIButton!
    @IBOutlet weak var spinImage: UIImageView!
    
   

    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        tutorialScrollView.contentSize = CGSize(width: 1280, height:568)
//        spinImage.alpha = 0
        
           }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
        func scrollViewDidEndDecelerating(tutorialScrollView: UIScrollView!) {
            // Get the current page based on the scroll offset
            let page : Int = Int(round(tutorialScrollView.contentOffset.x / 320))
            
            // Set the current page, so the dots will update
            pageControl.currentPage = page
            
//            if page == 3 {
//                pageControl.hidden = true
//                spinImage.alpha = 1
//                
//            }
//            else {
//                pageControl.hidden = false
//                spinImage.alpha = 0
//            }
            
            // This method is called when the scrollview finally stops scrolling.
        }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
