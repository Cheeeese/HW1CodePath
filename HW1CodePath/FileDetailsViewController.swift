//
//  FileDetailsViewController.swift
//  HW1CodePath
//
//  Created by Matthew Verghese on 2/6/16.
//  Copyright (c) 2016 Cheeeese. All rights reserved.
//

import UIKit

class FileDetailsViewController: UIViewController {

    @IBAction func onFavoriteButton(sender: UIButton) {
        sender.selected = true
}
    
    @IBAction func onFavoriteButtonPress(sender: UIButton) {
//
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
