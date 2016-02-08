//
//  Settings2ViewController.swift
//  dropbox
//
//  Created by Julia Yu on 2/7/16.
//  Copyright © 2016 julia yu. All rights reserved.
//

import UIKit

class Settings2ViewController: UIViewController {

    @IBOutlet weak var scrollSettings2: UIScrollView!
    @IBOutlet weak var settingsImage2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollSettings2.contentSize = settingsImage2.image!.size

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
