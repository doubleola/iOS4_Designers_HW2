//
//  ConversationViewController.swift
//  Carousel Challenge
//
//  Created by Olawale Oladunni on 10/20/15.
//  Copyright © 2015 walmartlabs. All rights reserved.
//

import UIKit

class ConversationViewController: UIViewController {

    @IBOutlet weak var backButton: UIButton!
    
    @IBAction func goBack(sender: AnyObject) {
        
        navigationController?.popToRootViewControllerAnimated(true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
