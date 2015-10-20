//
//  SignInViewController.swift
//  Carousel Challenge
//
//  Created by Olawale Oladunni on 10/20/15.
//  Copyright © 2015 walmartlabs. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {

    @IBOutlet weak var signInScrollView: UIScrollView!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var signInButton: UIButton!
    @IBOutlet weak var signInButtonView: UIView!
    
    var initialOffset: CGFloat!
    var buttonX: CGFloat!
    var buttonY: CGFloat!
    


    
    override func viewDidLoad() {
        super.viewDidLoad()

        initialOffset = signInScrollView.contentOffset.y
        buttonX = signInButtonView.center.x
        buttonY = signInButtonView.center.y
        emailTextField.text = ""
        passwordTextField.text = ""
        
        // Do any additional setup after loading the view.
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillShow:", name: UIKeyboardWillShowNotification, object: nil)
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillHide:", name: UIKeyboardWillHideNotification, object: nil)
    }

    @IBAction func onTap(sender: AnyObject) {
        signInScrollView.endEditing(true)
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func keyboardWillShow(notification: NSNotification) {
        
        signInScrollView.contentOffset.y = 100
       
      



    }

    func keyboardWillHide(notification: NSNotification) {
        signInScrollView.contentOffset.y = initialOffset
        
        
        
    
    
        
    }

    @IBAction func backToWelcome(sender: AnyObject) {
         dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func signIn(sender: AnyObject) {
       activityIndicator.startAnimating()
        
        if emailTextField.text == "ola" && passwordTextField.text == "password" {
            delay(2, closure: { () -> () in
                self.performSegueWithIdentifier("tutorialSegue", sender: nil)
                self.activityIndicator.stopAnimating()
                self.emailTextField.text = ""
                self.passwordTextField.text = ""
            })
            
            
        } else {
            delay(2, closure: { () -> () in
                
                
                let alertController = UIAlertController(title: "Access Denied", message: "Wrong username or password", preferredStyle: .Alert)
                
                // create a cancel action
                let cancelAction = UIAlertAction(title: "OK", style: .Cancel) { (action) in
                    // handle cancel response here. Doing nothing will dismiss the view.
                }
                // add the cancel action to the alertController
                alertController.addAction(cancelAction)
                
                
                self.presentViewController(alertController, animated: true){}
                
                
                self.activityIndicator.stopAnimating()
            })
            
        }

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
