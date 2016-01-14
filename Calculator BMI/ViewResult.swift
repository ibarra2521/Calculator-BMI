//
//  viewResult.swift
//  Calculator BMI
//
//  Created by Nivardo Ibarra on 11/10/15.
//  Copyright © 2015 Nivardo Ibarra. All rights reserved.
//

import UIKit

class ViewResult: UIViewController {
    var BMI:Double = 0.0
    @IBOutlet weak var lblResultBMI: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        lblResultBMI.text = String(BMI)
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
