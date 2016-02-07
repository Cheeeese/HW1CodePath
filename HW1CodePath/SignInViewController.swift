//
//  SignInViewController.swift
//  HW1CodePath
//
//  Created by Matthew Verghese on 2/6/16.
//  Copyright (c) 2016 Cheeeese. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {

    func keyboardWillShow(notification: NSNotification!) {
        fieldsParentView.frame.origin.y = initialY + offset
        
    }
    
    func keyboardWillHide(notification: NSNotification!) {
        fieldsParentView.frame.origin.y = initialY
    }

    @IBOutlet weak var fieldsParentView: UIView!
    
    // define variables for initial y and offset
    var initialY: CGFloat!
    var offset: CGFloat!
    
    // let frame = (notification.userInfo![UIKeyboardFrameEndUserInfoKey] as! NSValue).CGRectValue()
    
    
    @IBAction func didTap(sender: AnyObject) {
        view.endEditing(true) 
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // give initial values to the initialY when keyboard is not shown, and offset for when keyboard is shown
        
        initialY = fieldsParentView.frame.origin.y
        offset = -50
        
        // register for keyboard events and tie them to the keyboard show & hide methods above
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillShow:", name: UIKeyboardWillShowNotification, object: nil)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillHide:", name: UIKeyboardWillHideNotification, object: nil)
        
        
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
